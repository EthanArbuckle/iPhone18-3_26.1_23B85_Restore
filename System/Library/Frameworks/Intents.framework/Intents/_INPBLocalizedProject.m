@interface _INPBLocalizedProject
- (BOOL)isEqual:(id)a3;
- (_INPBLocalizedProject)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBLocalizedProject

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBLocalizedProject *)self appNames];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"app_names"];

  v6 = [(_INPBLocalizedProject *)self intentVocabulary];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intent_vocabulary"];

  v8 = [(_INPBLocalizedProject *)self language];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"language"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBAppNames *)self->_appNames hash];
  v4 = [(_INPBIntentVocabulary *)self->_intentVocabulary hash]^ v3;
  return v4 ^ [(_INPBLanguageTag *)self->_language hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBLocalizedProject *)self appNames];
  v6 = [v4 appNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBLocalizedProject *)self appNames];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBLocalizedProject *)self appNames];
    v10 = [v4 appNames];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBLocalizedProject *)self intentVocabulary];
  v6 = [v4 intentVocabulary];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBLocalizedProject *)self intentVocabulary];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBLocalizedProject *)self intentVocabulary];
    v15 = [v4 intentVocabulary];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBLocalizedProject *)self language];
  v6 = [v4 language];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBLocalizedProject *)self language];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBLocalizedProject *)self language];
    v20 = [v4 language];
    v21 = [v19 isEqual:v20];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBLocalizedProject allocWithZone:](_INPBLocalizedProject init];
  v6 = [(_INPBAppNames *)self->_appNames copyWithZone:a3];
  [(_INPBLocalizedProject *)v5 setAppNames:v6];

  v7 = [(_INPBIntentVocabulary *)self->_intentVocabulary copyWithZone:a3];
  [(_INPBLocalizedProject *)v5 setIntentVocabulary:v7];

  v8 = [(_INPBLanguageTag *)self->_language copyWithZone:a3];
  [(_INPBLocalizedProject *)v5 setLanguage:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBLocalizedProject *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBLocalizedProject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBLocalizedProject *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBLocalizedProject *)self appNames];

  if (v4)
  {
    v5 = [(_INPBLocalizedProject *)self appNames];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBLocalizedProject *)self intentVocabulary];

  if (v6)
  {
    v7 = [(_INPBLocalizedProject *)self intentVocabulary];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBLocalizedProject *)self language];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBLocalizedProject *)self language];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end