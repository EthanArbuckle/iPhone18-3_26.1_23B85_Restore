@interface ADDeviceSyncIncrementalChange
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncIncrementalChange)initWithBuilder:(id)builder;
- (ADDeviceSyncIncrementalChange)initWithCoder:(id)coder;
- (ADDeviceSyncIncrementalChange)initWithGeneration:(unint64_t)generation date:(id)date insertedOrUpdatedItems:(id)items deletedItemUUIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADDeviceSyncIncrementalChange

- (void)encodeWithCoder:(id)coder
{
  generation = self->_generation;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:generation];
  [coderCopy encodeObject:v5 forKey:@"ADDeviceSyncIncrementalChange::generation"];

  [coderCopy encodeObject:self->_date forKey:@"ADDeviceSyncIncrementalChange::date"];
  [coderCopy encodeObject:self->_insertedOrUpdatedItems forKey:@"ADDeviceSyncIncrementalChange::insertedOrUpdatedItems"];
  [coderCopy encodeObject:self->_deletedItemUUIDs forKey:@"ADDeviceSyncIncrementalChange::deletedItemUUIDs"];
}

- (ADDeviceSyncIncrementalChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncIncrementalChange::generation"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncIncrementalChange::date"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ADDeviceSyncIncrementalChange::insertedOrUpdatedItems"];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ADDeviceSyncIncrementalChange::deletedItemUUIDs"];

  v14 = [(ADDeviceSyncIncrementalChange *)self initWithGeneration:unsignedLongLongValue date:v7 insertedOrUpdatedItems:v10 deletedItemUUIDs:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generation = self->_generation;
      if (generation == [(ADDeviceSyncIncrementalChange *)v5 generation])
      {
        date = [(ADDeviceSyncIncrementalChange *)v5 date];
        date = self->_date;
        if (date == date || [(NSDate *)date isEqual:date])
        {
          insertedOrUpdatedItems = [(ADDeviceSyncIncrementalChange *)v5 insertedOrUpdatedItems];
          insertedOrUpdatedItems = self->_insertedOrUpdatedItems;
          if (insertedOrUpdatedItems == insertedOrUpdatedItems || [(NSArray *)insertedOrUpdatedItems isEqual:insertedOrUpdatedItems])
          {
            deletedItemUUIDs = [(ADDeviceSyncIncrementalChange *)v5 deletedItemUUIDs];
            deletedItemUUIDs = self->_deletedItemUUIDs;
            v13 = deletedItemUUIDs == deletedItemUUIDs || [(NSArray *)deletedItemUUIDs isEqual:deletedItemUUIDs];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncIncrementalChange;
  v5 = [(ADDeviceSyncIncrementalChange *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, date = %@, insertedOrUpdatedItems = %@, deletedItemUUIDs = %@}", v5, self->_generation, self->_date, self->_insertedOrUpdatedItems, self->_deletedItemUUIDs];

  return v6;
}

- (ADDeviceSyncIncrementalChange)initWithGeneration:(unint64_t)generation date:(id)date insertedOrUpdatedItems:(id)items deletedItemUUIDs:(id)ds
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10027C4A4;
  v15[3] = &unk_100518500;
  dateCopy = date;
  itemsCopy = items;
  dsCopy = ds;
  generationCopy = generation;
  v10 = dsCopy;
  v11 = itemsCopy;
  v12 = dateCopy;
  v13 = [(ADDeviceSyncIncrementalChange *)self initWithBuilder:v15];

  return v13;
}

- (ADDeviceSyncIncrementalChange)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = ADDeviceSyncIncrementalChange;
  v5 = [(ADDeviceSyncIncrementalChange *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncIncrementalChangeMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncIncrementalChangeMutation *)v7 isDirty])
    {
      v6->_generation = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getGeneration];
      getDate = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getDate];
      v9 = [getDate copy];
      date = v6->_date;
      v6->_date = v9;

      getInsertedOrUpdatedItems = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getInsertedOrUpdatedItems];
      v12 = [getInsertedOrUpdatedItems copy];
      insertedOrUpdatedItems = v6->_insertedOrUpdatedItems;
      v6->_insertedOrUpdatedItems = v12;

      getDeletedItemUUIDs = [(_ADDeviceSyncIncrementalChangeMutation *)v7 getDeletedItemUUIDs];
      v15 = [getDeletedItemUUIDs copy];
      deletedItemUUIDs = v6->_deletedItemUUIDs;
      v6->_deletedItemUUIDs = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADDeviceSyncIncrementalChangeMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncIncrementalChangeMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncIncrementalChange);
      v6->_generation = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getGeneration];
      getDate = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getDate];
      v8 = [getDate copy];
      date = v6->_date;
      v6->_date = v8;

      getInsertedOrUpdatedItems = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getInsertedOrUpdatedItems];
      v11 = [getInsertedOrUpdatedItems copy];
      insertedOrUpdatedItems = v6->_insertedOrUpdatedItems;
      v6->_insertedOrUpdatedItems = v11;

      getDeletedItemUUIDs = [(_ADDeviceSyncIncrementalChangeMutation *)v5 getDeletedItemUUIDs];
      v14 = [getDeletedItemUUIDs copy];
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