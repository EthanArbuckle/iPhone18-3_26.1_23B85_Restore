@interface INGetOnScreenContentForwardingAction
- (INGetOnScreenContentForwardingAction)initWithCoder:(id)coder;
- (INGetOnScreenContentForwardingAction)initWithSceneIdentifier:(id)identifier serviceOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetOnScreenContentForwardingAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetOnScreenContentForwardingAction;
  coderCopy = coder;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sceneIdentifier forKey:{@"sceneIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_serviceOptions forKey:@"serviceOptions"];
}

- (INGetOnScreenContentForwardingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getWFOnScreenContentServiceOptionsClass_softClass;
  v15 = getWFOnScreenContentServiceOptionsClass_softClass;
  if (!getWFOnScreenContentServiceOptionsClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getWFOnScreenContentServiceOptionsClass_block_invoke;
    v11[3] = &unk_1E72888B8;
    v11[4] = &v12;
    __getWFOnScreenContentServiceOptionsClass_block_invoke(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"serviceOptions"];
  if (v5)
  {
    self = [(INGetOnScreenContentForwardingAction *)self initWithSceneIdentifier:v5 serviceOptions:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (INGetOnScreenContentForwardingAction)initWithSceneIdentifier:(id)identifier serviceOptions:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  v9 = objc_alloc_init(INIntent);
  v12.receiver = self;
  v12.super_class = INGetOnScreenContentForwardingAction;
  v10 = [(INIntentForwardingAction *)&v12 initWithIntent:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_sceneIdentifier, identifier);
    objc_storeStrong(&v10->_serviceOptions, options);
  }

  return v10;
}

@end