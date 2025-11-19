@interface _SWCollaborationMetadataType
+ (_SWCollaborationMetadataType)collaboration;
+ (_SWCollaborationMetadataType)event;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollaborationMetadataType:(id)a3;
- (_SWCollaborationMetadataType)initWithCoder:(id)a3;
- (_SWCollaborationMetadataType)initWithTypedIdentifier:(id)a3 actionDescription:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (_SWCollaborationMetadataType)initWithTypedIdentifier:(id)a3 actionDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _SWCollaborationMetadataType;
  v8 = [(_SWCollaborationMetadataType *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_SWCollaborationMetadataType *)v8 setTypedIdentifier:v6];
    [(_SWCollaborationMetadataType *)v9 setActionDescription:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWCollaborationMetadataType *)self isEqualToCollaborationMetadataType:v4];

  return v5;
}

- (BOOL)isEqualToCollaborationMetadataType:(id)a3
{
  v7 = a3;
  v8 = [(_SWCollaborationMetadataType *)self typedIdentifier];
  if (!v8)
  {
    v15 = [v7 typedIdentifier];
    if (!v15)
    {
      v15 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  v3 = [(_SWCollaborationMetadataType *)self typedIdentifier];
  v4 = [v7 typedIdentifier];
  if ([v3 isEqual:v4])
  {
    v9 = 1;
LABEL_7:
    v11 = [(_SWCollaborationMetadataType *)self actionDescription];
    if (v11 || ([v7 actionDescription], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(_SWCollaborationMetadataType *)self actionDescription];
      v13 = [v7 actionDescription];
      v10 = [v12 isEqual:v13];

      if (v11)
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
  if (!v8)
  {
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_SWCollaborationMetadataType *)self typedIdentifier];
  v4 = [v3 hash];
  v5 = [(_SWCollaborationMetadataType *)self actionDescription];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_SWCollaborationMetadataType *)self typedIdentifier];
  v6 = NSStringFromSelector(sel_typedIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(_SWCollaborationMetadataType *)self actionDescription];
  v7 = NSStringFromSelector(sel_actionDescription);
  [v4 encodeObject:v8 forKey:v7];
}

- (_SWCollaborationMetadataType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_typedIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_actionDescription);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(_SWCollaborationMetadataType *)self initWithTypedIdentifier:v7 actionDescription:v10];
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_SWCollaborationMetadataType *)self typedIdentifier];
  v6 = [(_SWCollaborationMetadataType *)self actionDescription];
  v7 = [v4 initWithTypedIdentifier:v5 actionDescription:v6];

  return v7;
}

@end