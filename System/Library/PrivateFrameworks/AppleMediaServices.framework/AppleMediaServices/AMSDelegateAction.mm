@interface AMSDelegateAction
- (AMSDelegateAction)initWithDialogAction:(id)action;
- (AMSDelegateAction)initWithIdentifier:(id)identifier parameters:(id)parameters;
- (id)actionPayload;
- (id)description;
@end

@implementation AMSDelegateAction

- (AMSDelegateAction)initWithIdentifier:(id)identifier parameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = AMSDelegateAction;
  v9 = [(AMSDelegateAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_parameters, parameters);
  }

  return v10;
}

- (AMSDelegateAction)initWithDialogAction:(id)action
{
  actionCopy = action;
  kind = [actionCopy kind];
  v6 = kind;
  if (kind)
  {
    uUIDString = kind;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  parameters = [actionCopy parameters];

  if (parameters)
  {
    parameters2 = [actionCopy parameters];
    v11 = [parameters2 valueForKey:@"identifier"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;

      if (!v12)
      {
        v13 = 0;
        goto LABEL_10;
      }

      v13 = v12;
      v11 = uUIDString;
      uUIDString = v13;
    }

    else
    {
      v13 = 0;
    }

LABEL_10:
  }

  parameters3 = [actionCopy parameters];
  v15 = [(AMSDelegateAction *)self initWithIdentifier:uUIDString parameters:parameters3];

  return v15;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    parameters = [(AMSDelegateAction *)self parameters];
    v4 = [parameters description];
  }

  else
  {
    v4 = @"<private>";
  }

  v5 = MEMORY[0x1E696AEC0];
  identifier = [(AMSDelegateAction *)self identifier];
  v7 = [v5 stringWithFormat:@"{ id: %@, parameters: %@ }", identifier, v4];

  return v7;
}

- (id)actionPayload
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  parameters = [(AMSDelegateAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(AMSDelegateAction *)self parameters];
    [dictionary addEntriesFromDictionary:parameters2];
  }

  v6 = [dictionary objectForKey:@"actionKind"];

  if (!v6)
  {
    identifier = [(AMSDelegateAction *)self identifier];
    [dictionary setObject:identifier forKeyedSubscript:@"actionKind"];
  }

  return dictionary;
}

@end