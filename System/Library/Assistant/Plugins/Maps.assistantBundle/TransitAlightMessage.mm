@interface TransitAlightMessage
- (TransitAlightMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation TransitAlightMessage

- (TransitAlightMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = TransitAlightMessage;
  v5 = [(IPCMessageObject *)&v23 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = NSStringFromSelector("identifier");
    v7 = [dictionaryCopy objectForKeyedSubscript:v6];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = NSStringFromSelector("stopIndex");
    v10 = [dictionaryCopy objectForKeyedSubscript:v9];
    v5->_stopIndex = [v10 unsignedIntegerValue];

    v11 = NSStringFromSelector("stepIndex");
    v12 = [dictionaryCopy objectForKeyedSubscript:v11];
    v5->_stepIndex = [v12 unsignedIntegerValue];

    v13 = NSStringFromSelector("artwork");
    v14 = [dictionaryCopy objectForKeyedSubscript:v13];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = NSStringFromSelector("title");
    v17 = [dictionaryCopy objectForKeyedSubscript:v16];
    title = v5->_title;
    v5->_title = v17;

    v19 = NSStringFromSelector("detail");
    v20 = [dictionaryCopy objectForKeyedSubscript:v19];
    detail = v5->_detail;
    v5->_detail = v20;
  }

  return v5;
}

- (id)dictionaryValue
{
  v18.receiver = self;
  v18.super_class = TransitAlightMessage;
  dictionaryValue = [(IPCMessageObject *)&v18 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  identifier = [(TransitAlightMessage *)self identifier];
  v6 = NSStringFromSelector("identifier");
  [v4 setObject:identifier forKeyedSubscript:v6];

  v7 = [NSNumber numberWithUnsignedInteger:[(TransitAlightMessage *)self stopIndex]];
  v8 = NSStringFromSelector("stopIndex");
  [v4 setObject:v7 forKeyedSubscript:v8];

  v9 = [NSNumber numberWithUnsignedInteger:[(TransitAlightMessage *)self stepIndex]];
  v10 = NSStringFromSelector("stepIndex");
  [v4 setObject:v9 forKeyedSubscript:v10];

  artwork = [(TransitAlightMessage *)self artwork];
  v12 = NSStringFromSelector("artwork");
  [v4 setObject:artwork forKeyedSubscript:v12];

  title = [(TransitAlightMessage *)self title];
  v14 = NSStringFromSelector("title");
  [v4 setObject:title forKeyedSubscript:v14];

  detail = [(TransitAlightMessage *)self detail];
  v16 = NSStringFromSelector("detail");
  [v4 setObject:detail forKeyedSubscript:v16];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  dictionaryValue = [(TransitAlightMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"<%@:%p> %@", v3, self, dictionaryValue];

  return v5;
}

@end