@interface RequestLocalizations
- (RequestLocalizations)initWithApprove:(id)approve body:(id)body decline:(id)decline title:(id)title;
- (RequestLocalizations)initWithDictionary:(id)dictionary;
- (id)compile;
- (id)description;
@end

@implementation RequestLocalizations

- (RequestLocalizations)initWithApprove:(id)approve body:(id)body decline:(id)decline title:(id)title
{
  approveCopy = approve;
  bodyCopy = body;
  declineCopy = decline;
  titleCopy = title;
  v14 = titleCopy;
  selfCopy = 0;
  if (approveCopy && bodyCopy && declineCopy && titleCopy)
  {
    v26.receiver = self;
    v26.super_class = RequestLocalizations;
    v16 = [(RequestLocalizations *)&v26 init];
    if (v16)
    {
      v17 = [v14 copy];
      title = v16->_title;
      v16->_title = v17;

      v19 = [bodyCopy copy];
      body = v16->_body;
      v16->_body = v19;

      v21 = [approveCopy copy];
      approve = v16->_approve;
      v16->_approve = v21;

      v23 = [declineCopy copy];
      decline = v16->_decline;
      v16->_decline = v23;
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (RequestLocalizations)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"approve"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"body"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"decline"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"title"];
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
  approve = [(RequestLocalizations *)self approve];
  v10[0] = approve;
  v9[1] = @"body";
  body = [(RequestLocalizations *)self body];
  v10[1] = body;
  v9[2] = @"decline";
  decline = [(RequestLocalizations *)self decline];
  v10[2] = decline;
  v9[3] = @"title";
  title = [(RequestLocalizations *)self title];
  v10[3] = title;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)description
{
  compile = [(RequestLocalizations *)self compile];
  v4 = [(RequestLocalizations *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end