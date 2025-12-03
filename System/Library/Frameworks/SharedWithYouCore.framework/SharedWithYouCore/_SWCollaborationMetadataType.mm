@interface _SWCollaborationMetadataType
+ (_SWCollaborationMetadataType)collaboration;
+ (_SWCollaborationMetadataType)event;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollaborationMetadataType:(id)type;
- (_SWCollaborationMetadataType)initWithCoder:(id)coder;
- (_SWCollaborationMetadataType)initWithTypedIdentifier:(id)identifier actionDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWCollaborationMetadataType

+ (_SWCollaborationMetadataType)collaboration
{
  v2 = [_SWCollaborationMetadataType alloc];
  v3 = SWCoreFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"Collaborate" value:&stru_1F4E16F00 table:@"SharedWithYouCore"];
  v5 = [(_SWCollaborationMetadataType *)v2 initWithTypedIdentifier:@"SWCollaborationMetadataTypeTypeIdentifierCollaboration" actionDescription:v4];

  return v5;
}

+ (_SWCollaborationMetadataType)event
{
  v2 = [_SWCollaborationMetadataType alloc];
  v3 = SWCoreFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"RSVP" value:&stru_1F4E16F00 table:@"SharedWithYouCore"];
  v5 = [(_SWCollaborationMetadataType *)v2 initWithTypedIdentifier:@"SWCollaborationMetadataTypeTypeIdentifierEvent" actionDescription:v4];

  return v5;
}

- (_SWCollaborationMetadataType)initWithTypedIdentifier:(id)identifier actionDescription:(id)description
{
  identifierCopy = identifier;
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = _SWCollaborationMetadataType;
  v8 = [(_SWCollaborationMetadataType *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_SWCollaborationMetadataType *)v8 setTypedIdentifier:identifierCopy];
    [(_SWCollaborationMetadataType *)v9 setActionDescription:descriptionCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWCollaborationMetadataType *)self isEqualToCollaborationMetadataType:equalCopy];

  return v5;
}

- (BOOL)isEqualToCollaborationMetadataType:(id)type
{
  typeCopy = type;
  typedIdentifier = [(_SWCollaborationMetadataType *)self typedIdentifier];
  if (!typedIdentifier)
  {
    typedIdentifier2 = [typeCopy typedIdentifier];
    if (!typedIdentifier2)
    {
      typedIdentifier2 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  typedIdentifier3 = [(_SWCollaborationMetadataType *)self typedIdentifier];
  typedIdentifier4 = [typeCopy typedIdentifier];
  if ([typedIdentifier3 isEqual:typedIdentifier4])
  {
    v9 = 1;
LABEL_7:
    actionDescription = [(_SWCollaborationMetadataType *)self actionDescription];
    if (actionDescription || ([typeCopy actionDescription], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      actionDescription2 = [(_SWCollaborationMetadataType *)self actionDescription];
      actionDescription3 = [typeCopy actionDescription];
      v10 = [actionDescription2 isEqual:actionDescription3];

      if (actionDescription)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  if (!typedIdentifier)
  {
  }

  return v10;
}

- (unint64_t)hash
{
  typedIdentifier = [(_SWCollaborationMetadataType *)self typedIdentifier];
  v4 = [typedIdentifier hash];
  actionDescription = [(_SWCollaborationMetadataType *)self actionDescription];
  v6 = [actionDescription hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  typedIdentifier = [(_SWCollaborationMetadataType *)self typedIdentifier];
  v6 = NSStringFromSelector(sel_typedIdentifier);
  [coderCopy encodeObject:typedIdentifier forKey:v6];

  actionDescription = [(_SWCollaborationMetadataType *)self actionDescription];
  v7 = NSStringFromSelector(sel_actionDescription);
  [coderCopy encodeObject:actionDescription forKey:v7];
}

- (_SWCollaborationMetadataType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_typedIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_actionDescription);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(_SWCollaborationMetadataType *)self initWithTypedIdentifier:v7 actionDescription:v10];
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  typedIdentifier = [(_SWCollaborationMetadataType *)self typedIdentifier];
  actionDescription = [(_SWCollaborationMetadataType *)self actionDescription];
  v7 = [v4 initWithTypedIdentifier:typedIdentifier actionDescription:actionDescription];

  return v7;
}

@end