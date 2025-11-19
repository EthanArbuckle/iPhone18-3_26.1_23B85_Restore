@interface AFApplicationContextSnapshot
+ (id)newWithBuilder:(id)a3;
- (AFApplicationContextSnapshot)initWithApplicationContexts:(id)a3;
- (AFApplicationContextSnapshot)initWithBuilder:(id)a3;
- (AFApplicationContextSnapshot)initWithCoder:(id)a3;
- (AFApplicationContextSnapshot)initWithSerializedBackingStore:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation AFApplicationContextSnapshot

- (AFApplicationContextSnapshot)initWithSerializedBackingStore:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
    v6 = [v5 applicationContexts];
    self = [(AFApplicationContextSnapshot *)self initWithApplicationContexts:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AFApplicationContextSnapshot)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"AFApplicationContextSnapshot::applicationContexts"];

  v9 = [(AFApplicationContextSnapshot *)self initWithApplicationContexts:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFApplicationContextSnapshot *)v4 applicationContexts];
      applicationContexts = self->_applicationContexts;
      v7 = applicationContexts == v5 || [(NSArray *)applicationContexts isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFApplicationContextSnapshot;
  v5 = [(AFApplicationContextSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {applicationContexts = %@}", v5, self->_applicationContexts];

  return v6;
}

- (AFApplicationContextSnapshot)initWithApplicationContexts:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AFApplicationContextSnapshot_initWithApplicationContexts___block_invoke;
  v8[3] = &unk_1E73483C0;
  v9 = v4;
  v5 = v4;
  v6 = [(AFApplicationContextSnapshot *)self initWithBuilder:v8];

  return v6;
}

- (AFApplicationContextSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFApplicationContextSnapshot;
  v5 = [(AFApplicationContextSnapshot *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFApplicationContextSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFApplicationContextSnapshotMutation *)v7 isDirty])
    {
      v8 = [(_AFApplicationContextSnapshotMutation *)v7 getApplicationContexts];
      v9 = [v8 copy];
      applicationContexts = v6->_applicationContexts;
      v6->_applicationContexts = v9;
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
    v5 = [[_AFApplicationContextSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFApplicationContextSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFApplicationContextSnapshot);
      v7 = [(_AFApplicationContextSnapshotMutation *)v5 getApplicationContexts];
      v8 = [v7 copy];
      applicationContexts = v6->_applicationContexts;
      v6->_applicationContexts = v8;
    }

    else
    {
      v6 = [(AFApplicationContextSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFApplicationContextSnapshot *)self copy];
  }

  return v6;
}

@end