@interface BCMessageInfo
- (BCMessageInfo)initWithDictionary:(id)dictionary;
- (BCMessageInfo)initWithDictionary:(id)dictionary imageDictionary:(id)imageDictionary;
- (BCMessageInfo)initWithTitle:(id)title subtitle:(id)subtitle style:(id)style alternateTitle:(id)alternateTitle imageIdentifier:(id)identifier imageDescription:(id)description;
- (NSDictionary)dictionaryValue;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BCMessageInfo

- (BCMessageInfo)initWithTitle:(id)title subtitle:(id)subtitle style:(id)style alternateTitle:(id)alternateTitle imageIdentifier:(id)identifier imageDescription:(id)description
{
  titleCopy = title;
  subtitleCopy = subtitle;
  alternateTitleCopy = alternateTitle;
  identifierCopy = identifier;
  descriptionCopy = description;
  v22.receiver = self;
  v22.super_class = BCMessageInfo;
  v19 = [(BCMessageInfo *)&v22 init];
  v20 = v19;
  if (v19)
  {
    [(BCMessageInfo *)v19 setTitle:titleCopy];
    [(BCMessageInfo *)v20 setSubtitle:subtitleCopy];
    v20->__style = style;
    [(BCMessageInfo *)v20 setImageIdentifier:identifierCopy];
    [(BCMessageInfo *)v20 setImageDescription:descriptionCopy];
    [(BCMessageInfo *)v20 setAlternateTitle:alternateTitleCopy];
  }

  return v20;
}

- (BCMessageInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  null = [MEMORY[0x277CBEB68] null];
  if (v5 == null)
  {
    v7 = 0;
  }

  else
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
  null2 = [MEMORY[0x277CBEB68] null];
  if (v8 == null2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"style"];
  null3 = [MEMORY[0x277CBEB68] null];
  if (v11 == null3)
  {
    v13 = 0;
  }

  else
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"style"];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"alternateTitle"];
  null4 = [MEMORY[0x277CBEB68] null];
  if (v14 == null4)
  {
    v16 = 0;
  }

  else
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:@"alternateTitle"];
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"imageIdentifier"];
  null5 = [MEMORY[0x277CBEB68] null];
  if (v17 == null5)
  {
    v19 = 0;
  }

  else
  {
    v19 = [dictionaryCopy objectForKeyedSubscript:@"imageIdentifier"];
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"imageDescription"];
  null6 = [MEMORY[0x277CBEB68] null];
  if (v20 == null6)
  {
    v22 = 0;
  }

  else
  {
    v22 = [dictionaryCopy objectForKeyedSubscript:@"imageDescription"];
  }

  v23 = @"small";
  if (([v13 isEqualToString:@"small"] & 1) == 0)
  {
    v23 = @"large";
    if (![v13 isEqualToString:@"large"])
    {
      v23 = @"icon";
    }
  }

  if (v7)
  {
    self = [(BCMessageInfo *)self initWithTitle:v7 subtitle:v10 style:v23 alternateTitle:v16 imageIdentifier:v19 imageDescription:v22];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BCMessageInfo)initWithDictionary:(id)dictionary imageDictionary:(id)imageDictionary
{
  imageDictionaryCopy = imageDictionary;
  v7 = [(BCMessageInfo *)self initWithDictionary:dictionary];
  v8 = v7;
  if (v7)
  {
    imageIdentifier = [(BCMessageInfo *)v7 imageIdentifier];

    if (imageIdentifier)
    {
      imageIdentifier2 = [(BCMessageInfo *)v8 imageIdentifier];
      v11 = [imageDictionaryCopy objectForKeyedSubscript:imageIdentifier2];

      image = [v11 image];
      [(BCMessageInfo *)v8 setImage:image];

      imageDescription = [v11 imageDescription];
      [(BCMessageInfo *)v8 setImageDescription:imageDescription];
    }
  }

  return v8;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_subtitle forKeyedSubscript:@"subtitle"];
  [v3 setObject:self->__style forKeyedSubscript:@"style"];
  [v3 setObject:self->_imageIdentifier forKeyedSubscript:@"imageIdentifier"];
  [v3 setObject:self->_imageDescription forKeyedSubscript:@"imageDescription"];
  [v3 setObject:self->_alternateTitle forKeyedSubscript:@"alternateTitle"];
  v4 = [v3 copy];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BCMessageInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  title = [(BCMessageInfo *)self title];
  v5 = [v3 appendObject:title withName:@"title"];

  subtitle = [(BCMessageInfo *)self subtitle];
  v7 = [v3 appendObject:subtitle withName:@"subtitle" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCMessageInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BCMessageInfo *)self succinctDescriptionBuilder];
  alternateTitle = [(BCMessageInfo *)self alternateTitle];
  v6 = [succinctDescriptionBuilder appendObject:alternateTitle withName:@"alternateTitle" skipIfNil:1];

  imageIdentifier = [(BCMessageInfo *)self imageIdentifier];
  v8 = [succinctDescriptionBuilder appendObject:imageIdentifier withName:@"imageIdentifier" skipIfNil:1];

  imageDescription = [(BCMessageInfo *)self imageDescription];
  v10 = [succinctDescriptionBuilder appendObject:imageDescription withName:@"imageDescription" skipIfNil:1];

  style = [(BCMessageInfo *)self style];
  v12 = [succinctDescriptionBuilder appendObject:style withName:@"style"];

  return succinctDescriptionBuilder;
}

@end