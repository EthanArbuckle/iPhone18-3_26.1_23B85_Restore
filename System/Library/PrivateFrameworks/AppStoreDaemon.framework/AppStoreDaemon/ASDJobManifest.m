@interface ASDJobManifest
- (ASDJobManifest)initWithCoder:(id)a3;
- (ASDJobManifest)initWithManifestType:(int64_t)a3;
- (id)addActivity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_addActivity:(void *)a3 withIdentifier:(void *)a4 persistentID:;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateActivitiesUsingBlock:(id)a3;
@end

@implementation ASDJobManifest

- (ASDJobManifest)initWithManifestType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ASDJobManifest;
  result = [(ASDJobManifest *)&v5 init];
  if (result)
  {
    result->_manifestType = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDJobManifest allocWithZone:](ASDJobManifest initWithManifestType:"initWithManifestType:", self->_manifestType];
  v6 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "initWithArray:copyItems:", self->_activities, 1}];
  activities = v5->_activities;
  v5->_activities = v6;

  v8 = [(NSNumber *)self->_purchaseID copyWithZone:a3];
  purchaseID = v5->_purchaseID;
  v5->_purchaseID = v8;

  v10 = [(NSString *)self->_storeCorrelationID copyWithZone:a3];
  storeCorrelationID = v5->_storeCorrelationID;
  v5->_storeCorrelationID = v10;

  return v5;
}

- (id)addActivity:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v9[0] = 0;
    v9[1] = 0;
    [v5 getUUIDBytes:v9];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v9[0]];
  }

  else
  {
    v6 = 0;
  }

  [(ASDJobManifest *)self _addActivity:v4 withIdentifier:v6 persistentID:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_addActivity:(void *)a3 withIdentifier:(void *)a4 persistentID:
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if ([v14 isValid])
    {
      [(ASDJobActivity *)v14 setPersistentID:v8];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Activity %@ is invalid: %@", v14, @"Missing bundle ID"}];
    }

    v9 = *(a1 + 8);
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
      v13 = *(a1 + 8);
      *(a1 + 8) = v12;
    }
  }
}

- (void)enumerateActivitiesUsingBlock:(id)a3
{
  v4 = a3;
  activities = self->_activities;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ASDJobManifest_enumerateActivitiesUsingBlock___block_invoke;
  v7[3] = &unk_1E7CDD000;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)activities enumerateObjectsUsingBlock:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ASDJobManifest;
  v4 = [(ASDJobManifest *)&v9 description];
  v5 = [(ASDJobManifest *)self count];
  v6 = [(ASDJobManifest *)self storeCorrelationID];
  v7 = [v3 stringWithFormat:@"%@: (%lu, %@)", v4, v5, v6];

  return v7;
}

- (ASDJobManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[ASDJobManifest initWithManifestType:](self, "initWithManifestType:", [v4 decodeIntegerForKey:@"manifestType"]);
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"activities"];
    activities = v5->_activities;
    v5->_activities = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseID"];
    purchaseID = v5->_purchaseID;
    v5->_purchaseID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeCorrelationID"];
    storeCorrelationID = v5->_storeCorrelationID;
    v5->_storeCorrelationID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activities = self->_activities;
  v5 = a3;
  [v5 encodeObject:activities forKey:@"activities"];
  [v5 encodeInteger:self->_manifestType forKey:@"manifestType"];
  [v5 encodeObject:self->_purchaseID forKey:@"purchaseID"];
  [v5 encodeObject:self->_storeCorrelationID forKey:@"storeCorrelationID"];
}

@end