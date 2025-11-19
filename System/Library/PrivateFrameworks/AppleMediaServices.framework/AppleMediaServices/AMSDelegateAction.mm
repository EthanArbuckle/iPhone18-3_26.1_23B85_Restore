@interface AMSDelegateAction
- (AMSDelegateAction)initWithDialogAction:(id)a3;
- (AMSDelegateAction)initWithIdentifier:(id)a3 parameters:(id)a4;
- (id)actionPayload;
- (id)description;
@end

@implementation AMSDelegateAction

- (AMSDelegateAction)initWithIdentifier:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSDelegateAction;
  v9 = [(AMSDelegateAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_parameters, a4);
  }

  return v10;
}

- (AMSDelegateAction)initWithDialogAction:(id)a3
{
  v4 = a3;
  v5 = [v4 kind];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v8 UUIDString];
  }

  v9 = [v4 parameters];

  if (v9)
  {
    v10 = [v4 parameters];
    v11 = [v10 valueForKey:@"identifier"];

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
      v11 = v7;
      v7 = v13;
    }

    else
    {
      v13 = 0;
    }

LABEL_10:
  }

  v14 = [v4 parameters];
  v15 = [(AMSDelegateAction *)self initWithIdentifier:v7 parameters:v14];

  return v15;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    v3 = [(AMSDelegateAction *)self parameters];
    v4 = [v3 description];
  }

  else
  {
    v4 = @"<private>";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(AMSDelegateAction *)self identifier];
  v7 = [v5 stringWithFormat:@"{ id: %@, parameters: %@ }", v6, v4];

  return v7;
}

- (id)actionPayload
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AMSDelegateAction *)self parameters];

  if (v4)
  {
    v5 = [(AMSDelegateAction *)self parameters];
    [v3 addEntriesFromDictionary:v5];
  }

  v6 = [v3 objectForKey:@"actionKind"];

  if (!v6)
  {
    v7 = [(AMSDelegateAction *)self identifier];
    [v3 setObject:v7 forKeyedSubscript:@"actionKind"];
  }

  return v3;
}

@end