@interface _INPBLocalizedProject
- (BOOL)isEqual:(id)equal;
- (_INPBLocalizedProject)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBLocalizedProject

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appNames = [(_INPBLocalizedProject *)self appNames];
  dictionaryRepresentation = [appNames dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"app_names"];

  intentVocabulary = [(_INPBLocalizedProject *)self intentVocabulary];
  dictionaryRepresentation2 = [intentVocabulary dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intent_vocabulary"];

  language = [(_INPBLocalizedProject *)self language];
  dictionaryRepresentation3 = [language dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"language"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAppNames *)self->_appNames hash];
  v4 = [(_INPBIntentVocabulary *)self->_intentVocabulary hash]^ v3;
  return v4 ^ [(_INPBLanguageTag *)self->_language hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  appNames = [(_INPBLocalizedProject *)self appNames];
  appNames2 = [equalCopy appNames];
  if ((appNames != 0) == (appNames2 == 0))
  {
    goto LABEL_16;
  }

  appNames3 = [(_INPBLocalizedProject *)self appNames];
  if (appNames3)
  {
    v8 = appNames3;
    appNames4 = [(_INPBLocalizedProject *)self appNames];
    appNames5 = [equalCopy appNames];
    v11 = [appNames4 isEqual:appNames5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  appNames = [(_INPBLocalizedProject *)self intentVocabulary];
  appNames2 = [equalCopy intentVocabulary];
  if ((appNames != 0) == (appNames2 == 0))
  {
    goto LABEL_16;
  }

  intentVocabulary = [(_INPBLocalizedProject *)self intentVocabulary];
  if (intentVocabulary)
  {
    v13 = intentVocabulary;
    intentVocabulary2 = [(_INPBLocalizedProject *)self intentVocabulary];
    intentVocabulary3 = [equalCopy intentVocabulary];
    v16 = [intentVocabulary2 isEqual:intentVocabulary3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  appNames = [(_INPBLocalizedProject *)self language];
  appNames2 = [equalCopy language];
  if ((appNames != 0) != (appNames2 == 0))
  {
    language = [(_INPBLocalizedProject *)self language];
    if (!language)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = language;
    language2 = [(_INPBLocalizedProject *)self language];
    language3 = [equalCopy language];
    v21 = [language2 isEqual:language3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBLocalizedProject allocWithZone:](_INPBLocalizedProject init];
  v6 = [(_INPBAppNames *)self->_appNames copyWithZone:zone];
  [(_INPBLocalizedProject *)v5 setAppNames:v6];

  v7 = [(_INPBIntentVocabulary *)self->_intentVocabulary copyWithZone:zone];
  [(_INPBLocalizedProject *)v5 setIntentVocabulary:v7];

  v8 = [(_INPBLanguageTag *)self->_language copyWithZone:zone];
  [(_INPBLocalizedProject *)v5 setLanguage:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBLocalizedProject *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBLocalizedProject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBLocalizedProject *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appNames = [(_INPBLocalizedProject *)self appNames];

  if (appNames)
  {
    appNames2 = [(_INPBLocalizedProject *)self appNames];
    PBDataWriterWriteSubmessage();
  }

  intentVocabulary = [(_INPBLocalizedProject *)self intentVocabulary];

  if (intentVocabulary)
  {
    intentVocabulary2 = [(_INPBLocalizedProject *)self intentVocabulary];
    PBDataWriterWriteSubmessage();
  }

  language = [(_INPBLocalizedProject *)self language];

  v9 = toCopy;
  if (language)
  {
    language2 = [(_INPBLocalizedProject *)self language];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end