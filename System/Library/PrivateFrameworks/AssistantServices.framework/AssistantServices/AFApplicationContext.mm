@interface AFApplicationContext
+ (id)newWithBuilder:(id)builder;
- (AFApplicationContext)initWithAssociatedBundleIdentifier:(id)identifier bulletin:(id)bulletin aceContext:(id)context contextDictionary:(id)dictionary aceContexts:(id)contexts;
- (AFApplicationContext)initWithBuilder:(id)builder;
- (AFApplicationContext)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFApplicationContext

- (void)encodeWithCoder:(id)coder
{
  associatedBundleIdentifier = self->_associatedBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:associatedBundleIdentifier forKey:@"AFApplicationContext::associatedBundleIdentifier"];
  [coderCopy encodeObject:self->_bulletin forKey:@"AFApplicationContext::bulletin"];
  [coderCopy encodeObject:self->_aceContext forKey:@"AFApplicationContext::aceContext"];
  [coderCopy encodeObject:self->_contextDictionary forKey:@"AFApplicationContext::contextDictionary"];
  [coderCopy encodeObject:self->_aceContexts forKey:@"AFApplicationContext::aceContexts"];
}

- (AFApplicationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFApplicationContext::associatedBundleIdentifier"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFApplicationContext::bulletin"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFApplicationContext::aceContext"];
  v22 = MEMORY[0x1E695DFD8];
  v23 = v4;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v22 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"AFApplicationContext::contextDictionary"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"AFApplicationContext::aceContexts"];

  v20 = [(AFApplicationContext *)self initWithAssociatedBundleIdentifier:v25 bulletin:v24 aceContext:v23 contextDictionary:v15 aceContexts:v19];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      associatedBundleIdentifier = [(AFApplicationContext *)v5 associatedBundleIdentifier];
      associatedBundleIdentifier = self->_associatedBundleIdentifier;
      if (associatedBundleIdentifier == associatedBundleIdentifier || [(NSString *)associatedBundleIdentifier isEqual:associatedBundleIdentifier])
      {
        bulletin = [(AFApplicationContext *)v5 bulletin];
        bulletin = self->_bulletin;
        if (bulletin == bulletin || [(AFBulletin *)bulletin isEqual:bulletin])
        {
          aceContext = [(AFApplicationContext *)v5 aceContext];
          aceContext = self->_aceContext;
          if (aceContext == aceContext || [(AceObject *)aceContext isEqual:aceContext])
          {
            contextDictionary = [(AFApplicationContext *)v5 contextDictionary];
            contextDictionary = self->_contextDictionary;
            if (contextDictionary == contextDictionary || [(NSDictionary *)contextDictionary isEqual:contextDictionary])
            {
              aceContexts = [(AFApplicationContext *)v5 aceContexts];
              aceContexts = self->_aceContexts;
              v16 = aceContexts == aceContexts || [(NSArray *)aceContexts isEqual:aceContexts];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_associatedBundleIdentifier hash];
  v4 = [(AFBulletin *)self->_bulletin hash]^ v3;
  v5 = [(AceObject *)self->_aceContext hash];
  v6 = v4 ^ v5 ^ [(NSDictionary *)self->_contextDictionary hash];
  return v6 ^ [(NSArray *)self->_aceContexts hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFApplicationContext;
  v5 = [(AFApplicationContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {associatedBundleIdentifier = %@, bulletin = %@, aceContext = %@, contextDictionary = %@, aceContexts = %@}", v5, self->_associatedBundleIdentifier, self->_bulletin, self->_aceContext, self->_contextDictionary, self->_aceContexts];

  return v6;
}

- (AFApplicationContext)initWithAssociatedBundleIdentifier:(id)identifier bulletin:(id)bulletin aceContext:(id)context contextDictionary:(id)dictionary aceContexts:(id)contexts
{
  identifierCopy = identifier;
  bulletinCopy = bulletin;
  contextCopy = context;
  dictionaryCopy = dictionary;
  contextsCopy = contexts;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __109__AFApplicationContext_initWithAssociatedBundleIdentifier_bulletin_aceContext_contextDictionary_aceContexts___block_invoke;
  v24[3] = &unk_1E7348110;
  v25 = identifierCopy;
  v26 = bulletinCopy;
  v27 = contextCopy;
  v28 = dictionaryCopy;
  v29 = contextsCopy;
  v17 = contextsCopy;
  v18 = dictionaryCopy;
  v19 = contextCopy;
  v20 = bulletinCopy;
  v21 = identifierCopy;
  v22 = [(AFApplicationContext *)self initWithBuilder:v24];

  return v22;
}

void __109__AFApplicationContext_initWithAssociatedBundleIdentifier_bulletin_aceContext_contextDictionary_aceContexts___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setAssociatedBundleIdentifier:v3];
  [v4 setBulletin:a1[5]];
  [v4 setAceContext:a1[6]];
  [v4 setContextDictionary:a1[7]];
  [v4 setAceContexts:a1[8]];
}

- (AFApplicationContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v24.receiver = self;
  v24.super_class = AFApplicationContext;
  v5 = [(AFApplicationContext *)&v24 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFApplicationContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFApplicationContextMutation *)v7 isDirty])
    {
      getAssociatedBundleIdentifier = [(_AFApplicationContextMutation *)v7 getAssociatedBundleIdentifier];
      v9 = [getAssociatedBundleIdentifier copy];
      associatedBundleIdentifier = v6->_associatedBundleIdentifier;
      v6->_associatedBundleIdentifier = v9;

      getBulletin = [(_AFApplicationContextMutation *)v7 getBulletin];
      v12 = [getBulletin copy];
      bulletin = v6->_bulletin;
      v6->_bulletin = v12;

      getAceContext = [(_AFApplicationContextMutation *)v7 getAceContext];
      v15 = [getAceContext copy];
      aceContext = v6->_aceContext;
      v6->_aceContext = v15;

      getContextDictionary = [(_AFApplicationContextMutation *)v7 getContextDictionary];
      v18 = [getContextDictionary copy];
      contextDictionary = v6->_contextDictionary;
      v6->_contextDictionary = v18;

      getAceContexts = [(_AFApplicationContextMutation *)v7 getAceContexts];
      v21 = [getAceContexts copy];
      aceContexts = v6->_aceContexts;
      v6->_aceContexts = v21;
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
    v5 = [[_AFApplicationContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFApplicationContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFApplicationContext);
      getAssociatedBundleIdentifier = [(_AFApplicationContextMutation *)v5 getAssociatedBundleIdentifier];
      v8 = [getAssociatedBundleIdentifier copy];
      associatedBundleIdentifier = v6->_associatedBundleIdentifier;
      v6->_associatedBundleIdentifier = v8;

      getBulletin = [(_AFApplicationContextMutation *)v5 getBulletin];
      v11 = [getBulletin copy];
      bulletin = v6->_bulletin;
      v6->_bulletin = v11;

      getAceContext = [(_AFApplicationContextMutation *)v5 getAceContext];
      v14 = [getAceContext copy];
      aceContext = v6->_aceContext;
      v6->_aceContext = v14;

      getContextDictionary = [(_AFApplicationContextMutation *)v5 getContextDictionary];
      v17 = [getContextDictionary copy];
      contextDictionary = v6->_contextDictionary;
      v6->_contextDictionary = v17;

      getAceContexts = [(_AFApplicationContextMutation *)v5 getAceContexts];
      v20 = [getAceContexts copy];
      aceContexts = v6->_aceContexts;
      v6->_aceContexts = v20;
    }

    else
    {
      v6 = [(AFApplicationContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFApplicationContext *)self copy];
  }

  return v6;
}

@end