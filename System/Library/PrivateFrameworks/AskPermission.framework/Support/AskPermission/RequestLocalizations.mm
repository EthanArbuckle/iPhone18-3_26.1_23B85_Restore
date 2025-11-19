@interface RequestLocalizations
- (RequestLocalizations)initWithApprove:(id)a3 body:(id)a4 decline:(id)a5 title:(id)a6;
- (RequestLocalizations)initWithDictionary:(id)a3;
- (id)compile;
- (id)description;
@end

@implementation RequestLocalizations

- (RequestLocalizations)initWithApprove:(id)a3 body:(id)a4 decline:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  if (v10 && v11 && v12 && v13)
  {
    v26.receiver = self;
    v26.super_class = RequestLocalizations;
    v16 = [(RequestLocalizations *)&v26 init];
    if (v16)
    {
      v17 = [v14 copy];
      title = v16->_title;
      v16->_title = v17;

      v19 = [v11 copy];
      body = v16->_body;
      v16->_body = v19;

      v21 = [v10 copy];
      approve = v16->_approve;
      v16->_approve = v21;

      v23 = [v12 copy];
      decline = v16->_decline;
      v16->_decline = v23;
    }

    self = v16;
    v15 = self;
  }

  return v15;
}

- (RequestLocalizations)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"approve"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"body"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"decline"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(RequestLocalizations *)self initWithApprove:v6 body:v8 decline:v10 title:v12];
  return v13;
}

- (id)compile
{
  v9[0] = @"approve";
  v3 = [(RequestLocalizations *)self approve];
  v10[0] = v3;
  v9[1] = @"body";
  v4 = [(RequestLocalizations *)self body];
  v10[1] = v4;
  v9[2] = @"decline";
  v5 = [(RequestLocalizations *)self decline];
  v10[2] = v5;
  v9[3] = @"title";
  v6 = [(RequestLocalizations *)self title];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)description
{
  v3 = [(RequestLocalizations *)self compile];
  v4 = [(RequestLocalizations *)self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end