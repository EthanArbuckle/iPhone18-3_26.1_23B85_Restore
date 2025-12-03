@interface ASDJobManifest
- (ASDJobManifest)initWithCoder:(id)coder;
- (ASDJobManifest)initWithManifestType:(int64_t)type;
- (id)addActivity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addActivity:(void *)activity withIdentifier:(void *)identifier persistentID:;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateActivitiesUsingBlock:(id)block;
@end

@implementation ASDJobManifest

- (ASDJobManifest)initWithManifestType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ASDJobManifest;
  result = [(ASDJobManifest *)&v5 init];
  if (result)
  {
    result->_manifestType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDJobManifest allocWithZone:](ASDJobManifest initWithManifestType:"initWithManifestType:", self->_manifestType];
  v6 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{zone), "initWithArray:copyItems:", self->_activities, 1}];
  activities = v5->_activities;
  v5->_activities = v6;

  v8 = [(NSNumber *)self->_purchaseID copyWithZone:zone];
  purchaseID = v5->_purchaseID;
  v5->_purchaseID = v8;

  v10 = [(NSString *)self->_storeCorrelationID copyWithZone:zone];
  storeCorrelationID = v5->_storeCorrelationID;
  v5->_storeCorrelationID = v10;

  return v5;
}

- (id)addActivity:(id)activity
{
  v9[2] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  if (self)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9[0] = 0;
    v9[1] = 0;
    [uUID getUUIDBytes:v9];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v9[0]];
  }

  else
  {
    v6 = 0;
  }

  [(ASDJobManifest *)self _addActivity:activityCopy withIdentifier:v6 persistentID:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_addActivity:(void *)activity withIdentifier:(void *)identifier persistentID:
{
  v14 = a2;
  activityCopy = activity;
  identifierCopy = identifier;
  if (self)
  {
    if ([v14 isValid])
    {
      [(ASDJobActivity *)v14 setPersistentID:identifierCopy];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Activity %@ is invalid: %@", v14, @"Missing bundle ID"}];
    }

    v9 = *(self + 8);
    if (v9)
    {
      v10 = [v14 copy];
      [v9 addObject:v10];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      v10 = [v14 copy];
      v12 = [v11 initWithObjects:{v10, 0}];
      v13 = *(self + 8);
      *(self + 8) = v12;
    }
  }
}

- (void)enumerateActivitiesUsingBlock:(id)block
{
  blockCopy = block;
  activities = self->_activities;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ASDJobManifest_enumerateActivitiesUsingBlock___block_invoke;
  v7[3] = &unk_1E7CDD000;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)activities enumerateObjectsUsingBlock:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ASDJobManifest;
  v4 = [(ASDJobManifest *)&v9 description];
  v5 = [(ASDJobManifest *)self count];
  storeCorrelationID = [(ASDJobManifest *)self storeCorrelationID];
  v7 = [v3 stringWithFormat:@"%@: (%lu, %@)", v4, v5, storeCorrelationID];

  return v7;
}

- (ASDJobManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[ASDJobManifest initWithManifestType:](self, "initWithManifestType:", [coderCopy decodeIntegerForKey:@"manifestType"]);
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"activities"];
    activities = v5->_activities;
    v5->_activities = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseID"];
    purchaseID = v5->_purchaseID;
    v5->_purchaseID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeCorrelationID"];
    storeCorrelationID = v5->_storeCorrelationID;
    v5->_storeCorrelationID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activities = self->_activities;
  coderCopy = coder;
  [coderCopy encodeObject:activities forKey:@"activities"];
  [coderCopy encodeInteger:self->_manifestType forKey:@"manifestType"];
  [coderCopy encodeObject:self->_purchaseID forKey:@"purchaseID"];
  [coderCopy encodeObject:self->_storeCorrelationID forKey:@"storeCorrelationID"];
}

@end