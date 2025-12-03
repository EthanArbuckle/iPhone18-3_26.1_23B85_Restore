@interface ADDeviceSyncSnapshot
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncSnapshot)initWithBuilder:(id)builder;
- (ADDeviceSyncSnapshot)initWithCoder:(id)coder;
- (ADDeviceSyncSnapshot)initWithGeneration:(unint64_t)generation date:(id)date items:(id)items;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADDeviceSyncSnapshot

- (void)encodeWithCoder:(id)coder
{
  generation = self->_generation;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:generation];
  [coderCopy encodeObject:v5 forKey:@"ADDeviceSyncSnapshot::generation"];

  [coderCopy encodeObject:self->_date forKey:@"ADDeviceSyncSnapshot::date"];
  [coderCopy encodeObject:self->_items forKey:@"ADDeviceSyncSnapshot::items"];
}

- (ADDeviceSyncSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncSnapshot::generation"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncSnapshot::date"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ADDeviceSyncSnapshot::items"];

  v11 = [(ADDeviceSyncSnapshot *)self initWithGeneration:unsignedLongLongValue date:v7 items:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generation = self->_generation;
      if (generation == [(ADDeviceSyncSnapshot *)v5 generation])
      {
        date = [(ADDeviceSyncSnapshot *)v5 date];
        date = self->_date;
        if (date == date || [(NSDate *)date isEqual:date])
        {
          items = [(ADDeviceSyncSnapshot *)v5 items];
          items = self->_items;
          v11 = items == items || [(NSArray *)items isEqual:items];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSDate *)self->_date hash];
  v6 = v5 ^ [(NSArray *)self->_items hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncSnapshot;
  v5 = [(ADDeviceSyncSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, date = %@, items = %@}", v5, self->_generation, self->_date, self->_items];

  return v6;
}

- (ADDeviceSyncSnapshot)initWithGeneration:(unint64_t)generation date:(id)date items:(id)items
{
  dateCopy = date;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A1D98;
  v13[3] = &unk_1005101B0;
  itemsCopy = items;
  generationCopy = generation;
  v14 = dateCopy;
  v9 = itemsCopy;
  v10 = dateCopy;
  v11 = [(ADDeviceSyncSnapshot *)self initWithBuilder:v13];

  return v11;
}

- (ADDeviceSyncSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = ADDeviceSyncSnapshot;
  v5 = [(ADDeviceSyncSnapshot *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncSnapshotMutation *)v7 isDirty])
    {
      v6->_generation = [(_ADDeviceSyncSnapshotMutation *)v7 getGeneration];
      getDate = [(_ADDeviceSyncSnapshotMutation *)v7 getDate];
      v9 = [getDate copy];
      date = v6->_date;
      v6->_date = v9;

      getItems = [(_ADDeviceSyncSnapshotMutation *)v7 getItems];
      v12 = [getItems copy];
      items = v6->_items;
      v6->_items = v12;
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
    v5 = [[_ADDeviceSyncSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncSnapshot);
      v6->_generation = [(_ADDeviceSyncSnapshotMutation *)v5 getGeneration];
      getDate = [(_ADDeviceSyncSnapshotMutation *)v5 getDate];
      v8 = [getDate copy];
      date = v6->_date;
      v6->_date = v8;

      getItems = [(_ADDeviceSyncSnapshotMutation *)v5 getItems];
      v11 = [getItems copy];
      items = v6->_items;
      v6->_items = v11;
    }

    else
    {
      v6 = [(ADDeviceSyncSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncSnapshot *)self copy];
  }

  return v6;
}

@end