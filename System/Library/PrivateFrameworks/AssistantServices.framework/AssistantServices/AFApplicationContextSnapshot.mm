@interface AFApplicationContextSnapshot
+ (id)newWithBuilder:(id)builder;
- (AFApplicationContextSnapshot)initWithApplicationContexts:(id)contexts;
- (AFApplicationContextSnapshot)initWithBuilder:(id)builder;
- (AFApplicationContextSnapshot)initWithCoder:(id)coder;
- (AFApplicationContextSnapshot)initWithSerializedBackingStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation AFApplicationContextSnapshot

- (AFApplicationContextSnapshot)initWithSerializedBackingStore:(id)store
{
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:storeCopy error:0];
    applicationContexts = [v5 applicationContexts];
    self = [(AFApplicationContextSnapshot *)self initWithApplicationContexts:applicationContexts];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (AFApplicationContextSnapshot)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AFApplicationContextSnapshot::applicationContexts"];

  v9 = [(AFApplicationContextSnapshot *)self initWithApplicationContexts:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applicationContexts = [(AFApplicationContextSnapshot *)equalCopy applicationContexts];
      applicationContexts = self->_applicationContexts;
      v7 = applicationContexts == applicationContexts || [(NSArray *)applicationContexts isEqual:applicationContexts];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFApplicationContextSnapshot;
  v5 = [(AFApplicationContextSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {applicationContexts = %@}", v5, self->_applicationContexts];

  return v6;
}

- (AFApplicationContextSnapshot)initWithApplicationContexts:(id)contexts
{
  contextsCopy = contexts;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AFApplicationContextSnapshot_initWithApplicationContexts___block_invoke;
  v8[3] = &unk_1E73483C0;
  v9 = contextsCopy;
  v5 = contextsCopy;
  v6 = [(AFApplicationContextSnapshot *)self initWithBuilder:v8];

  return v6;
}

- (AFApplicationContextSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFApplicationContextSnapshot;
  v5 = [(AFApplicationContextSnapshot *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFApplicationContextSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFApplicationContextSnapshotMutation *)v7 isDirty])
    {
      getApplicationContexts = [(_AFApplicationContextSnapshotMutation *)v7 getApplicationContexts];
      v9 = [getApplicationContexts copy];
      applicationContexts = v6->_applicationContexts;
      v6->_applicationContexts = v9;
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
    v5 = [[_AFApplicationContextSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFApplicationContextSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFApplicationContextSnapshot);
      getApplicationContexts = [(_AFApplicationContextSnapshotMutation *)v5 getApplicationContexts];
      v8 = [getApplicationContexts copy];
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