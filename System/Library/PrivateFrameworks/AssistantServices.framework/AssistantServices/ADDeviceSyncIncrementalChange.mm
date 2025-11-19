@interface ADDeviceSyncIncrementalChange
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncIncrementalChange)initWithBuilder:(id)a3;
- (ADDeviceSyncIncrementalChange)initWithCoder:(id)a3;
- (ADDeviceSyncIncrementalChange)initWithGeneration:(unint64_t)a3 date:(id)a4 insertedOrUpdatedItems:(id)a5 deletedItemUUIDs:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceSyncIncrementalChange

- (void)encodeWithCoder:(id)a3
{
  generation = self->_generation;
  v6 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:generation];
  [v6 encodeObject:v5 forKey:@"ADDeviceSyncIncrementalChange::generation"];

  [v6 encodeObject:self->_date forKey:@"ADDeviceSyncIncrementalChange::date"];
  [v6 encodeObject:self->_insertedOrUpdatedItems forKey:@"ADDeviceSyncIncrementalChange::insertedOrUpdatedItems"];
  [v6 encodeObject:self->_deletedItemUUIDs forKey:@"ADDeviceSyncIncrementalChange::deletedItemUUIDs"];
}

- (ADDeviceSyncIncrementalChange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncIncrementalChange::generation"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncIncrementalChange::date"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ADDeviceSyncIncrementalChange::insertedOrUpdatedItems"];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ADDeviceSyncIncrementalChange::deletedItemUUIDs"];

  v14 = [(ADDeviceSyncIncrementalChange *)self initWithGeneration:v6 date:v7 insertedOrUpdatedItems:v10 deletedItemUUIDs:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      generation = self->_generation;
      if (generation == [(ADDeviceSyncIncrementalChange *)v5 generation])
      {
        v7 = [(ADDeviceSyncIncrementalChange *)v5 date];
        date = self->_date;
        if (date == v7 || [(NSDate *)date isEqual:v7])
        {
          v9 = [(ADDeviceSyncIncrementalChange *)v5 insertedOrUpdatedItems];
          insertedOrUpdatedItems = self->_insertedOrUpdatedItems;
          if (insertedOrUpdatedItems == v9 || [(NSArray *)insertedOrUpdatedItems isEqual:v9])
          {
            v11 = [(ADDeviceSyncIncrementalChange *)v5 deletedItemUUIDs];
            deletedItemUUIDs = self->_deletedItemUUIDs;
            v13 = deletedItemUUIDs == v11 || [(NSArray *)deletedItemUUIDs isEqual:v11];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSDate *)self->_date hash];
  v6 = v5 ^ [(NSArray *)self->_insertedOrUpdatedItems hash];
  v7 = v6 ^ [(NSArray *)self->_deletedItemUUIDs hash];

  return v7 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncIncrementalChange;
  v5 = [(ADDeviceSyncIncrementalChange *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, date = %@, insertedOrUpdatedItems = %@, deletedItemUUIDs = %@}", v5, self->_generation, self->_date, self->_insertedOrUpdatedItems, self->_deletedItemUUIDs];

  return v6;
}

- (ADDeviceSyncIncrementalChange)initWithGeneration:(unint64_t)a3 date:(id)a4 insertedOrUpdatedItems:(id)a5 deletedItemUUIDs:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10027C4A4;
  v15[3] = &unk_100518500;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a3;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = [(ADDeviceSyncIncrementalChange *)self initWithBuilder:v15];

  return v13;
}

- (ADDeviceSyncIncrementalChange)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ADDeviceSyncIncrementalChange;
  v5 = [(ADDeviceSyncIncrementalChange *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncIncrementalChangeMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncIncrementalChangeMutation *)v7 isDirty])
    {
      v6->_generation = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getGeneration];
      v8 = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getDate];
      v9 = [v8 copy];
      date = v6->_date;
      v6->_date = v9;

      v11 = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getInsertedOrUpdatedItems];
      v12 = [v11 copy];
      insertedOrUpdatedItems = v6->_insertedOrUpdatedItems;
      v6->_insertedOrUpdatedItems = v12;

      v14 = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getDeletedItemUUIDs];
      v15 = [v14 copy];
      deletedItemUUIDs = v6->_deletedItemUUIDs;
      v6->_deletedItemUUIDs = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADDeviceSyncIncrementalChangeMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncIncrementalChangeMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncIncrementalChange);
      v6->_generation = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getGeneration];
      v7 = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getDate];
      v8 = [v7 copy];
      date = v6->_date;
      v6->_date = v8;

      v10 = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getInsertedOrUpdatedItems];
      v11 = [v10 copy];
      insertedOrUpdatedItems = v6->_insertedOrUpdatedItems;
      v6->_insertedOrUpdatedItems = v11;

      v13 = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getDeletedItemUUIDs];
      v14 = [v13 copy];
      deletedItemUUIDs = v6->_deletedItemUUIDs;
      v6->_deletedItemUUIDs = v14;
    }

    else
    {
      v6 = [(ADDeviceSyncIncrementalChange *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncIncrementalChange *)self copy];
  }

  return v6;
}

@end