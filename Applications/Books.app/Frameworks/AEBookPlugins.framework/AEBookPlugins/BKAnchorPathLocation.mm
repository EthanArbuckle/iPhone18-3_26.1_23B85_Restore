@interface BKAnchorPathLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
- (BKAnchorPathLocation)initWithCoder:(id)coder;
- (BKAnchorPathLocation)initWithLocationDictionary:(id)dictionary;
- (BKAnchorPathLocation)initWithOrdinal:(int64_t)ordinal anchor:(id)anchor andPath:(id)path;
- (BKAnchorPathLocation)initWithPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)pathWithAnchor;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
- (void)updateOrdinalForBookInfo:(id)info;
@end

@implementation BKAnchorPathLocation

- (BKAnchorPathLocation)initWithPath:(id)path
{
  pathCopy = path;
  uRLFragmentString = [pathCopy URLFragmentString];
  stringByRemovingURLFragment = [pathCopy stringByRemovingURLFragment];

  v7 = [(BKAnchorPathLocation *)self initWithOrdinal:-1 anchor:uRLFragmentString andPath:stringByRemovingURLFragment];
  return v7;
}

- (BKAnchorPathLocation)initWithOrdinal:(int64_t)ordinal anchor:(id)anchor andPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = BKAnchorPathLocation;
  v9 = [(BKAnchorLocation *)&v13 initWithOrdinal:ordinal andAnchor:anchor];
  if (v9)
  {
    v10 = [pathCopy copy];
    path = v9->_path;
    v9->_path = v10;
  }

  return v9;
}

- (BKAnchorPathLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKAnchorPathLocation;
  v5 = [(BKAnchorLocation *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v7 = [v6 copy];
    path = v5->_path;
    v5->_path = v7;
  }

  return v5;
}

- (BKAnchorPathLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v11.receiver = self;
  v11.super_class = BKAnchorPathLocation;
  v6 = [(BKAnchorLocation *)&v11 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"path"];
    v8 = [v7 copy];
    path = v6->_path;
    v6->_path = v8;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = BKAnchorPathLocation, [(BKAnchorLocation *)&v9 isEqual:equalCopy]))
  {
    path = [equalCopy path];
    path2 = [(BKAnchorPathLocation *)self path];
    v7 = [path isEqualToString:path2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = BKAnchorPathLocation;
  v3 = [(BKAnchorLocation *)&v5 hash];
  return [(NSString *)self->_path hash]^ v3;
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKAnchorPathLocation;
  stringValue = [(BKAnchorLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, path:%@ }", stringValue, self->_path];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = BKAnchorPathLocation;
  v3 = [(BKAnchorLocation *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, _path:%@", v3, self->_path];

  return v4;
}

- (id)pathWithAnchor
{
  path = [(BKAnchorPathLocation *)self path];
  v4 = [path mutableCopy];

  anchor = [(BKAnchorLocation *)self anchor];
  v6 = [anchor length];

  if (v6)
  {
    anchor2 = [(BKAnchorLocation *)self anchor];
    [v4 appendFormat:@"#%@", anchor2];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)updateOrdinalForBookInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy documentWithOrdinal:{-[BKLocation ordinal](self, "ordinal")}];
  path = [(BKAnchorPathLocation *)self path];
  v6 = CFURLCreateStringByReplacingPercentEscapes(0, path, &stru_1E7188);

  if (!v4 || ([v4 manifestId], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", v6), v7, (v8 & 1) == 0))
  {
    databaseKey = [infoCopy databaseKey];
    v10 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND manifestId == %@", databaseKey, v6];

    managedObjectContext = [infoCopy managedObjectContext];
    v12 = [managedObjectContext entity:@"BKDocument" withPredicate:v10 sortBy:0 ascending:1 fetchLimit:1];

    if ([v12 count])
    {
      v13 = [v12 objectAtIndex:0];

      documentOrdinal = [v13 documentOrdinal];
      -[BKLocation setOrdinal:](self, "setOrdinal:", [documentOrdinal integerValue]);

      v4 = v13;
    }
  }
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKAnchorPathLocation;
  serializeLocationToDictionary = [(BKAnchorLocation *)&v7 serializeLocationToDictionary];
  path = [(BKAnchorPathLocation *)self path];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:serializeLocationToDictionary, @"super", path, @"path", @"BKAnchorPathLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKAnchorPathLocation"])
  {
    v5 = [[BKAnchorPathLocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end