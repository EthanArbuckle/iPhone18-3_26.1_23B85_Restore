@interface _INPBValueMetadata
- (BOOL)isEqual:(id)a3;
- (_INPBValueMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsRequiredEntitlements:(id)a3;
- (unint64_t)hash;
- (void)addRequiredEntitlement:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCanonicalValue:(id)a3;
- (void)setInput:(id)a3;
- (void)setSource:(id)a3;
- (void)setSourceAppBundleIdentifier:(id)a3;
- (void)setUuid:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBValueMetadata

- (void)dealloc
{
  [(_INPBValueMetadata *)self clearRequiredEntitlements];
  v3.receiver = self;
  v3.super_class = _INPBValueMetadata;
  [(_INPBValueMetadata *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_canonicalValue)
  {
    v4 = [(_INPBValueMetadata *)self canonicalValue];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"canonicalValue"];
  }

  v6 = [(_INPBValueMetadata *)self confidenceScore];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"confidenceScore"];

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBValueMetadata confirmed](self, "confirmed")}];
    [v3 setObject:v8 forKeyedSubscript:@"confirmed"];
  }

  if (self->_input)
  {
    v9 = [(_INPBValueMetadata *)self input];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"input"];
  }

  if (self->_requiredEntitlements.count)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBValueMetadata requiredEntitlementsCount](self, "requiredEntitlementsCount")}];
    if ([(_INPBValueMetadata *)self requiredEntitlementsCount])
    {
      v12 = 0;
      do
      {
        v13 = self->_requiredEntitlements.list[v12];
        if (v13 == 1)
        {
          v14 = @"CONTACTS";
        }

        else if (v13 == 2)
        {
          v14 = @"LOCATION";
        }

        else
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requiredEntitlements.list[v12]];
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < [(_INPBValueMetadata *)self requiredEntitlementsCount]);
    }

    [v3 setObject:v11 forKeyedSubscript:@"requiredEntitlement"];
  }

  if (self->_source)
  {
    v15 = [(_INPBValueMetadata *)self source];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"source"];
  }

  if (self->_sourceAppBundleIdentifier)
  {
    v17 = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"sourceAppBundleIdentifier"];
  }

  if (self->_uuid)
  {
    v19 = [(_INPBValueMetadata *)self uuid];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"uuid"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_canonicalValue hash];
  v4 = [(_INPBConfidenceScore *)self->_confidenceScore hash];
  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    v5 = 2654435761 * self->_confirmed;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_input hash];
  v7 = PBRepeatedInt32Hash();
  v8 = v7 ^ [(NSString *)self->_source hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_sourceAppBundleIdentifier hash];
  return v9 ^ [(NSString *)self->_uuid hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_INPBValueMetadata *)self canonicalValue];
  v6 = [v4 canonicalValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_INPBValueMetadata *)self canonicalValue];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBValueMetadata *)self canonicalValue];
    v10 = [v4 canonicalValue];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBValueMetadata *)self confidenceScore];
  v6 = [v4 confidenceScore];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_INPBValueMetadata *)self confidenceScore];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBValueMetadata *)self confidenceScore];
    v15 = [v4 confidenceScore];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v17 = [(_INPBValueMetadata *)self hasConfirmed];
  if (v17 != [v4 hasConfirmed])
  {
    goto LABEL_37;
  }

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    if ([v4 hasConfirmed])
    {
      confirmed = self->_confirmed;
      if (confirmed != [v4 confirmed])
      {
        goto LABEL_37;
      }
    }
  }

  v5 = [(_INPBValueMetadata *)self input];
  v6 = [v4 input];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v19 = [(_INPBValueMetadata *)self input];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBValueMetadata *)self input];
    v22 = [v4 input];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_37;
  }

  v5 = [(_INPBValueMetadata *)self source];
  v6 = [v4 source];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v24 = [(_INPBValueMetadata *)self source];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBValueMetadata *)self source];
    v27 = [v4 source];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
  v6 = [v4 sourceAppBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v29 = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
    v32 = [v4 sourceAppBundleIdentifier];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBValueMetadata *)self uuid];
  v6 = [v4 uuid];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  v34 = [(_INPBValueMetadata *)self uuid];
  if (!v34)
  {

LABEL_40:
    v39 = 1;
    goto LABEL_38;
  }

  v35 = v34;
  v36 = [(_INPBValueMetadata *)self uuid];
  v37 = [v4 uuid];
  v38 = [v36 isEqual:v37];

  if (v38)
  {
    goto LABEL_40;
  }

LABEL_37:
  v39 = 0;
LABEL_38:

  return v39;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBValueMetadata allocWithZone:](_INPBValueMetadata init];
  v6 = [(NSString *)self->_canonicalValue copyWithZone:a3];
  [(_INPBValueMetadata *)v5 setCanonicalValue:v6];

  v7 = [(_INPBConfidenceScore *)self->_confidenceScore copyWithZone:a3];
  [(_INPBValueMetadata *)v5 setConfidenceScore:v7];

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    [(_INPBValueMetadata *)v5 setConfirmed:[(_INPBValueMetadata *)self confirmed]];
  }

  v8 = [(NSString *)self->_input copyWithZone:a3];
  [(_INPBValueMetadata *)v5 setInput:v8];

  PBRepeatedInt32Copy();
  v9 = [(NSString *)self->_source copyWithZone:a3];
  [(_INPBValueMetadata *)v5 setSource:v9];

  v10 = [(NSString *)self->_sourceAppBundleIdentifier copyWithZone:a3];
  [(_INPBValueMetadata *)v5 setSourceAppBundleIdentifier:v10];

  v11 = [(NSString *)self->_uuid copyWithZone:a3];
  [(_INPBValueMetadata *)v5 setUuid:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBValueMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBValueMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBValueMetadata *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = a3;
  v4 = [(_INPBValueMetadata *)self canonicalValue];

  if (v4)
  {
    canonicalValue = self->_canonicalValue;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBValueMetadata *)self confidenceScore];

  if (v6)
  {
    v7 = [(_INPBValueMetadata *)self confidenceScore];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    confirmed = self->_confirmed;
    PBDataWriterWriteBOOLField();
  }

  v9 = [(_INPBValueMetadata *)self input];

  if (v9)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if (self->_requiredEntitlements.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_requiredEntitlements.list[v11];
      PBDataWriterWriteInt32Field();
      ++v11;
    }

    while (v11 < self->_requiredEntitlements.count);
  }

  v13 = [(_INPBValueMetadata *)self source];

  if (v13)
  {
    source = self->_source;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];

  if (v15)
  {
    sourceAppBundleIdentifier = self->_sourceAppBundleIdentifier;
    PBDataWriterWriteStringField();
  }

  v17 = [(_INPBValueMetadata *)self uuid];

  v18 = v20;
  if (v17)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
    v18 = v20;
  }
}

- (void)setUuid:(id)a3
{
  v4 = [a3 copy];
  uuid = self->_uuid;
  self->_uuid = v4;

  MEMORY[0x1EEE66BB8](v4, uuid);
}

- (void)setSourceAppBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  sourceAppBundleIdentifier = self->_sourceAppBundleIdentifier;
  self->_sourceAppBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, sourceAppBundleIdentifier);
}

- (void)setSource:(id)a3
{
  v4 = [a3 copy];
  source = self->_source;
  self->_source = v4;

  MEMORY[0x1EEE66BB8](v4, source);
}

- (int)StringAsRequiredEntitlements:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"CONTACTS"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"LOCATION"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addRequiredEntitlement:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setInput:(id)a3
{
  v4 = [a3 copy];
  input = self->_input;
  self->_input = v4;

  MEMORY[0x1EEE66BB8](v4, input);
}

- (void)setCanonicalValue:(id)a3
{
  v4 = [a3 copy];
  canonicalValue = self->_canonicalValue;
  self->_canonicalValue = v4;

  MEMORY[0x1EEE66BB8](v4, canonicalValue);
}

@end