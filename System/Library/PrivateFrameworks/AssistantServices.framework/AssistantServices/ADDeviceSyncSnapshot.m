@interface ADDeviceSyncSnapshot
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncSnapshot)initWithBuilder:(id)a3;
- (ADDeviceSyncSnapshot)initWithCoder:(id)a3;
- (ADDeviceSyncSnapshot)initWithGeneration:(unint64_t)a3 date:(id)a4 items:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceSyncSnapshot

- (void)encodeWithCoder:(id)a3
{
  generation = self->_generation;
  v6 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:generation];
  [v6 encodeObject:v5 forKey:@"ADDeviceSyncSnapshot::generation"];

  [v6 encodeObject:self->_date forKey:@"ADDeviceSyncSnapshot::date"];
  [v6 encodeObject:self->_items forKey:@"ADDeviceSyncSnapshot::items"];
}

- (ADDeviceSyncSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncSnapshot::generation"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncSnapshot::date"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ADDeviceSyncSnapshot::items"];

  v11 = [(ADDeviceSyncSnapshot *)self initWithGeneration:v6 date:v7 items:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      generation = self->_generation;
      if (generation == [(ADDeviceSyncSnapshot *)v5 generation])
      {
        v7 = [(ADDeviceSyncSnapshot *)v5 date];
        date = self->_date;
        if (date == v7 || [(NSDate *)date isEqual:v7])
        {
          v9 = [(ADDeviceSyncSnapshot *)v5 items];
          items = self->_items;
          v11 = items == v9 || [(NSArray *)items isEqual:v9];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncSnapshot;
  v5 = [(ADDeviceSyncSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, date = %@, items = %@}", v5, self->_generation, self->_date, self->_items];

  return v6;
}

- (ADDeviceSyncSnapshot)initWithGeneration:(unint64_t)a3 date:(id)a4 items:(id)a5
{
  v8 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A1D98;
  v13[3] = &unk_1005101B0;
  v15 = a5;
  v16 = a3;
  v14 = v8;
  v9 = v15;
  v10 = v8;
  v11 = [(ADDeviceSyncSnapshot *)self initWithBuilder:v13];

  return v11;
}

- (ADDeviceSyncSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADDeviceSyncSnapshot;
  v5 = [(ADDeviceSyncSnapshot *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncSnapshotMutation *)v7 isDirty])
    {
      v6->_generation = [(_ADDeviceSyncSnapshotMutation *)v7 getGeneration];
      v8 = [(_ADDeviceSyncSnapshotMutation *)v7 getDate];
      v9 = [v8 copy];
      date = v6->_date;
      v6->_date = v9;

      v11 = [(_ADDeviceSyncSnapshotMutation *)v7 getItems];
      v12 = [v11 copy];
      items = v6->_items;
      v6->_items = v12;
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
    v5 = [[_ADDeviceSyncSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncSnapshot);
      v6->_generation = [(_ADDeviceSyncSnapshotMutation *)v5 getGeneration];
      v7 = [(_ADDeviceSyncSnapshotMutation *)v5 getDate];
      v8 = [v7 copy];
      date = v6->_date;
      v6->_date = v8;

      v10 = [(_ADDeviceSyncSnapshotMutation *)v5 getItems];
      v11 = [v10 copy];
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