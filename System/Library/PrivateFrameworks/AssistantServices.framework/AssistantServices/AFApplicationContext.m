@interface AFApplicationContext
+ (id)newWithBuilder:(id)a3;
- (AFApplicationContext)initWithAssociatedBundleIdentifier:(id)a3 bulletin:(id)a4 aceContext:(id)a5 contextDictionary:(id)a6 aceContexts:(id)a7;
- (AFApplicationContext)initWithBuilder:(id)a3;
- (AFApplicationContext)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFApplicationContext

- (void)encodeWithCoder:(id)a3
{
  associatedBundleIdentifier = self->_associatedBundleIdentifier;
  v5 = a3;
  [v5 encodeObject:associatedBundleIdentifier forKey:@"AFApplicationContext::associatedBundleIdentifier"];
  [v5 encodeObject:self->_bulletin forKey:@"AFApplicationContext::bulletin"];
  [v5 encodeObject:self->_aceContext forKey:@"AFApplicationContext::aceContext"];
  [v5 encodeObject:self->_contextDictionary forKey:@"AFApplicationContext::contextDictionary"];
  [v5 encodeObject:self->_aceContexts forKey:@"AFApplicationContext::aceContexts"];
}

- (AFApplicationContext)initWithCoder:(id)a3
{
  v3 = a3;
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFApplicationContext::associatedBundleIdentifier"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFApplicationContext::bulletin"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFApplicationContext::aceContext"];
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
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"AFApplicationContext::contextDictionary"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v3 decodeObjectOfClasses:v18 forKey:@"AFApplicationContext::aceContexts"];

  v20 = [(AFApplicationContext *)self initWithAssociatedBundleIdentifier:v25 bulletin:v24 aceContext:v23 contextDictionary:v15 aceContexts:v19];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFApplicationContext *)v5 associatedBundleIdentifier];
      associatedBundleIdentifier = self->_associatedBundleIdentifier;
      if (associatedBundleIdentifier == v6 || [(NSString *)associatedBundleIdentifier isEqual:v6])
      {
        v8 = [(AFApplicationContext *)v5 bulletin];
        bulletin = self->_bulletin;
        if (bulletin == v8 || [(AFBulletin *)bulletin isEqual:v8])
        {
          v10 = [(AFApplicationContext *)v5 aceContext];
          aceContext = self->_aceContext;
          if (aceContext == v10 || [(AceObject *)aceContext isEqual:v10])
          {
            v12 = [(AFApplicationContext *)v5 contextDictionary];
            contextDictionary = self->_contextDictionary;
            if (contextDictionary == v12 || [(NSDictionary *)contextDictionary isEqual:v12])
            {
              v14 = [(AFApplicationContext *)v5 aceContexts];
              aceContexts = self->_aceContexts;
              v16 = aceContexts == v14 || [(NSArray *)aceContexts isEqual:v14];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFApplicationContext;
  v5 = [(AFApplicationContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {associatedBundleIdentifier = %@, bulletin = %@, aceContext = %@, contextDictionary = %@, aceContexts = %@}", v5, self->_associatedBundleIdentifier, self->_bulletin, self->_aceContext, self->_contextDictionary, self->_aceContexts];

  return v6;
}

- (AFApplicationContext)initWithAssociatedBundleIdentifier:(id)a3 bulletin:(id)a4 aceContext:(id)a5 contextDictionary:(id)a6 aceContexts:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __109__AFApplicationContext_initWithAssociatedBundleIdentifier_bulletin_aceContext_contextDictionary_aceContexts___block_invoke;
  v24[3] = &unk_1E7348110;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
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

- (AFApplicationContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = AFApplicationContext;
  v5 = [(AFApplicationContext *)&v24 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFApplicationContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFApplicationContextMutation *)v7 isDirty])
    {
      v8 = [(_AFApplicationContextMutation *)v7 getAssociatedBundleIdentifier];
      v9 = [v8 copy];
      associatedBundleIdentifier = v6->_associatedBundleIdentifier;
      v6->_associatedBundleIdentifier = v9;

      v11 = [(_AFApplicationContextMutation *)v7 getBulletin];
      v12 = [v11 copy];
      bulletin = v6->_bulletin;
      v6->_bulletin = v12;

      v14 = [(_AFApplicationContextMutation *)v7 getAceContext];
      v15 = [v14 copy];
      aceContext = v6->_aceContext;
      v6->_aceContext = v15;

      v17 = [(_AFApplicationContextMutation *)v7 getContextDictionary];
      v18 = [v17 copy];
      contextDictionary = v6->_contextDictionary;
      v6->_contextDictionary = v18;

      v20 = [(_AFApplicationContextMutation *)v7 getAceContexts];
      v21 = [v20 copy];
      aceContexts = v6->_aceContexts;
      v6->_aceContexts = v21;
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
    v5 = [[_AFApplicationContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFApplicationContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFApplicationContext);
      v7 = [(_AFApplicationContextMutation *)v5 getAssociatedBundleIdentifier];
      v8 = [v7 copy];
      associatedBundleIdentifier = v6->_associatedBundleIdentifier;
      v6->_associatedBundleIdentifier = v8;

      v10 = [(_AFApplicationContextMutation *)v5 getBulletin];
      v11 = [v10 copy];
      bulletin = v6->_bulletin;
      v6->_bulletin = v11;

      v13 = [(_AFApplicationContextMutation *)v5 getAceContext];
      v14 = [v13 copy];
      aceContext = v6->_aceContext;
      v6->_aceContext = v14;

      v16 = [(_AFApplicationContextMutation *)v5 getContextDictionary];
      v17 = [v16 copy];
      contextDictionary = v6->_contextDictionary;
      v6->_contextDictionary = v17;

      v19 = [(_AFApplicationContextMutation *)v5 getAceContexts];
      v20 = [v19 copy];
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