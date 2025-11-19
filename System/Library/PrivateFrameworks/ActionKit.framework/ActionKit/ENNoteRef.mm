@interface ENNoteRef
+ (id)noteRefFromData:(id)a3;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ENNoteRef)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENNoteRef

- (id)wfSerializedRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"link.contentkit.ennoteref";
  v2 = [(ENNoteRef *)self asData];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"link.contentkit.ennoteref"];
  if (v4)
  {
    v5 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.ennoteref"];
    v6 = [ENNoteRef noteRefFromData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(ENNoteRef *)self type];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278C19EB0[v4];
  }

  v6 = objc_opt_class();
  v7 = [(ENNoteRef *)self guid];
  [v3 appendFormat:@"<%@: %p; guid = %@; type = %@", v6, self, v7, v5];

  v8 = [(ENNoteRef *)self linkedNotebook];

  if (v8)
  {
    v9 = [(ENNoteRef *)self linkedNotebook];
    v10 = [v9 shardId];
    [v3 appendFormat:@"; link shard = %@", v10];
  }

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ENNoteRef *)self type];
  v4 = [(ENNoteRef *)self guid];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [(ENNoteRef *)self linkedNotebook];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7 + 29791;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(ENNoteRef *)v7 type];
        if (v8 != [(ENNoteRef *)self type])
        {
          v12 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v9 = [(ENNoteRef *)self guid];
        v10 = [(ENNoteRef *)v7 guid];
        if (v9 != v10)
        {
          v11 = [(ENNoteRef *)v7 guid];
          v3 = [(ENNoteRef *)self guid];
          if (![v11 isEqualToString:v3])
          {
            v12 = 0;
LABEL_16:

LABEL_17:
            goto LABEL_18;
          }

          v19 = v11;
        }

        v13 = [(ENNoteRef *)self linkedNotebook];
        v14 = [(ENNoteRef *)v7 linkedNotebook];
        v15 = v14;
        if (v13 == v14)
        {

          v12 = 1;
        }

        else
        {
          v16 = [(ENNoteRef *)v7 linkedNotebook];
          v17 = [(ENNoteRef *)self linkedNotebook];
          v12 = [v16 isEqual:v17];
        }

        v11 = v19;
        if (v9 == v10)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ENNoteRef);
  [(ENNoteRef *)v4 setType:[(ENNoteRef *)self type]];
  v5 = [(ENNoteRef *)self guid];
  [(ENNoteRef *)v4 setGuid:v5];

  v6 = [(ENNoteRef *)self linkedNotebook];
  [(ENNoteRef *)v4 setLinkedNotebook:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[ENNoteRef type](self forKey:{"type"), @"type"}];
  v5 = [(ENNoteRef *)self guid];
  [v4 encodeObject:v5 forKey:@"guid"];

  v6 = [(ENNoteRef *)self linkedNotebook];
  [v4 encodeObject:v6 forKey:@"linkedNotebook"];
}

- (ENNoteRef)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ENNoteRef;
  v5 = [(ENNoteRef *)&v9 init];
  if (v5)
  {
    -[ENNoteRef setType:](v5, "setType:", [v4 decodeInt32ForKey:@"type"]);
    v6 = [v4 decodeObjectForKey:@"guid"];
    [(ENNoteRef *)v5 setGuid:v6];

    v7 = [v4 decodeObjectForKey:@"linkedNotebook"];
    [(ENNoteRef *)v5 setLinkedNotebook:v7];
  }

  return v5;
}

+ (id)noteRefFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v3];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v4;
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end