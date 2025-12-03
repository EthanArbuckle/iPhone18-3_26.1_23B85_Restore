@interface _INPBValueMetadata
- (BOOL)isEqual:(id)equal;
- (_INPBValueMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsRequiredEntitlements:(id)entitlements;
- (unint64_t)hash;
- (void)addRequiredEntitlement:(int)entitlement;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCanonicalValue:(id)value;
- (void)setInput:(id)input;
- (void)setSource:(id)source;
- (void)setSourceAppBundleIdentifier:(id)identifier;
- (void)setUuid:(id)uuid;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_canonicalValue)
  {
    canonicalValue = [(_INPBValueMetadata *)self canonicalValue];
    v5 = [canonicalValue copy];
    [dictionary setObject:v5 forKeyedSubscript:@"canonicalValue"];
  }

  confidenceScore = [(_INPBValueMetadata *)self confidenceScore];
  dictionaryRepresentation = [confidenceScore dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"confidenceScore"];

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBValueMetadata confirmed](self, "confirmed")}];
    [dictionary setObject:v8 forKeyedSubscript:@"confirmed"];
  }

  if (self->_input)
  {
    input = [(_INPBValueMetadata *)self input];
    v10 = [input copy];
    [dictionary setObject:v10 forKeyedSubscript:@"input"];
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

    [dictionary setObject:v11 forKeyedSubscript:@"requiredEntitlement"];
  }

  if (self->_source)
  {
    source = [(_INPBValueMetadata *)self source];
    v16 = [source copy];
    [dictionary setObject:v16 forKeyedSubscript:@"source"];
  }

  if (self->_sourceAppBundleIdentifier)
  {
    sourceAppBundleIdentifier = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
    v18 = [sourceAppBundleIdentifier copy];
    [dictionary setObject:v18 forKeyedSubscript:@"sourceAppBundleIdentifier"];
  }

  if (self->_uuid)
  {
    uuid = [(_INPBValueMetadata *)self uuid];
    v20 = [uuid copy];
    [dictionary setObject:v20 forKeyedSubscript:@"uuid"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  canonicalValue = [(_INPBValueMetadata *)self canonicalValue];
  canonicalValue2 = [equalCopy canonicalValue];
  if ((canonicalValue != 0) == (canonicalValue2 == 0))
  {
    goto LABEL_36;
  }

  canonicalValue3 = [(_INPBValueMetadata *)self canonicalValue];
  if (canonicalValue3)
  {
    v8 = canonicalValue3;
    canonicalValue4 = [(_INPBValueMetadata *)self canonicalValue];
    canonicalValue5 = [equalCopy canonicalValue];
    v11 = [canonicalValue4 isEqual:canonicalValue5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  canonicalValue = [(_INPBValueMetadata *)self confidenceScore];
  canonicalValue2 = [equalCopy confidenceScore];
  if ((canonicalValue != 0) == (canonicalValue2 == 0))
  {
    goto LABEL_36;
  }

  confidenceScore = [(_INPBValueMetadata *)self confidenceScore];
  if (confidenceScore)
  {
    v13 = confidenceScore;
    confidenceScore2 = [(_INPBValueMetadata *)self confidenceScore];
    confidenceScore3 = [equalCopy confidenceScore];
    v16 = [confidenceScore2 isEqual:confidenceScore3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  hasConfirmed = [(_INPBValueMetadata *)self hasConfirmed];
  if (hasConfirmed != [equalCopy hasConfirmed])
  {
    goto LABEL_37;
  }

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    if ([equalCopy hasConfirmed])
    {
      confirmed = self->_confirmed;
      if (confirmed != [equalCopy confirmed])
      {
        goto LABEL_37;
      }
    }
  }

  canonicalValue = [(_INPBValueMetadata *)self input];
  canonicalValue2 = [equalCopy input];
  if ((canonicalValue != 0) == (canonicalValue2 == 0))
  {
    goto LABEL_36;
  }

  input = [(_INPBValueMetadata *)self input];
  if (input)
  {
    v20 = input;
    input2 = [(_INPBValueMetadata *)self input];
    input3 = [equalCopy input];
    v23 = [input2 isEqual:input3];

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

  canonicalValue = [(_INPBValueMetadata *)self source];
  canonicalValue2 = [equalCopy source];
  if ((canonicalValue != 0) == (canonicalValue2 == 0))
  {
    goto LABEL_36;
  }

  source = [(_INPBValueMetadata *)self source];
  if (source)
  {
    v25 = source;
    source2 = [(_INPBValueMetadata *)self source];
    source3 = [equalCopy source];
    v28 = [source2 isEqual:source3];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  canonicalValue = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
  canonicalValue2 = [equalCopy sourceAppBundleIdentifier];
  if ((canonicalValue != 0) == (canonicalValue2 == 0))
  {
    goto LABEL_36;
  }

  sourceAppBundleIdentifier = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
  if (sourceAppBundleIdentifier)
  {
    v30 = sourceAppBundleIdentifier;
    sourceAppBundleIdentifier2 = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];
    sourceAppBundleIdentifier3 = [equalCopy sourceAppBundleIdentifier];
    v33 = [sourceAppBundleIdentifier2 isEqual:sourceAppBundleIdentifier3];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  canonicalValue = [(_INPBValueMetadata *)self uuid];
  canonicalValue2 = [equalCopy uuid];
  if ((canonicalValue != 0) == (canonicalValue2 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  uuid = [(_INPBValueMetadata *)self uuid];
  if (!uuid)
  {

LABEL_40:
    v39 = 1;
    goto LABEL_38;
  }

  v35 = uuid;
  uuid2 = [(_INPBValueMetadata *)self uuid];
  uuid3 = [equalCopy uuid];
  v38 = [uuid2 isEqual:uuid3];

  if (v38)
  {
    goto LABEL_40;
  }

LABEL_37:
  v39 = 0;
LABEL_38:

  return v39;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBValueMetadata allocWithZone:](_INPBValueMetadata init];
  v6 = [(NSString *)self->_canonicalValue copyWithZone:zone];
  [(_INPBValueMetadata *)v5 setCanonicalValue:v6];

  v7 = [(_INPBConfidenceScore *)self->_confidenceScore copyWithZone:zone];
  [(_INPBValueMetadata *)v5 setConfidenceScore:v7];

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    [(_INPBValueMetadata *)v5 setConfirmed:[(_INPBValueMetadata *)self confirmed]];
  }

  v8 = [(NSString *)self->_input copyWithZone:zone];
  [(_INPBValueMetadata *)v5 setInput:v8];

  PBRepeatedInt32Copy();
  v9 = [(NSString *)self->_source copyWithZone:zone];
  [(_INPBValueMetadata *)v5 setSource:v9];

  v10 = [(NSString *)self->_sourceAppBundleIdentifier copyWithZone:zone];
  [(_INPBValueMetadata *)v5 setSourceAppBundleIdentifier:v10];

  v11 = [(NSString *)self->_uuid copyWithZone:zone];
  [(_INPBValueMetadata *)v5 setUuid:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBValueMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBValueMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBValueMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  canonicalValue = [(_INPBValueMetadata *)self canonicalValue];

  if (canonicalValue)
  {
    canonicalValue = self->_canonicalValue;
    PBDataWriterWriteStringField();
  }

  confidenceScore = [(_INPBValueMetadata *)self confidenceScore];

  if (confidenceScore)
  {
    confidenceScore2 = [(_INPBValueMetadata *)self confidenceScore];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBValueMetadata *)self hasConfirmed])
  {
    confirmed = self->_confirmed;
    PBDataWriterWriteBOOLField();
  }

  input = [(_INPBValueMetadata *)self input];

  if (input)
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

  source = [(_INPBValueMetadata *)self source];

  if (source)
  {
    source = self->_source;
    PBDataWriterWriteStringField();
  }

  sourceAppBundleIdentifier = [(_INPBValueMetadata *)self sourceAppBundleIdentifier];

  if (sourceAppBundleIdentifier)
  {
    sourceAppBundleIdentifier = self->_sourceAppBundleIdentifier;
    PBDataWriterWriteStringField();
  }

  uuid = [(_INPBValueMetadata *)self uuid];

  v18 = toCopy;
  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
    v18 = toCopy;
  }
}

- (void)setUuid:(id)uuid
{
  v4 = [uuid copy];
  uuid = self->_uuid;
  self->_uuid = v4;

  MEMORY[0x1EEE66BB8](v4, uuid);
}

- (void)setSourceAppBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sourceAppBundleIdentifier = self->_sourceAppBundleIdentifier;
  self->_sourceAppBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, sourceAppBundleIdentifier);
}

- (void)setSource:(id)source
{
  v4 = [source copy];
  source = self->_source;
  self->_source = v4;

  MEMORY[0x1EEE66BB8](v4, source);
}

- (int)StringAsRequiredEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v4 = 1;
  if (([entitlementsCopy isEqualToString:@"CONTACTS"] & 1) == 0)
  {
    if ([entitlementsCopy isEqualToString:@"LOCATION"])
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

- (void)addRequiredEntitlement:(int)entitlement
{
  if (entitlement != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setInput:(id)input
{
  v4 = [input copy];
  input = self->_input;
  self->_input = v4;

  MEMORY[0x1EEE66BB8](v4, input);
}

- (void)setCanonicalValue:(id)value
{
  v4 = [value copy];
  canonicalValue = self->_canonicalValue;
  self->_canonicalValue = v4;

  MEMORY[0x1EEE66BB8](v4, canonicalValue);
}

@end