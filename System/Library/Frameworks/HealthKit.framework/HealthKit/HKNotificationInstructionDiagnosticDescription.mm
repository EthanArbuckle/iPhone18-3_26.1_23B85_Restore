@interface HKNotificationInstructionDiagnosticDescription
- (BOOL)isEqual:(id)equal;
- (HKNotificationInstructionDiagnosticDescription)initWithCoder:(id)coder;
- (HKNotificationInstructionDiagnosticDescription)initWithMessageIdentifier:(id)identifier creationDate:(id)date receivedDate:(id)receivedDate modificationDate:(id)modificationDate sendingDeviceName:(id)name sendingDeviceInfo:(id)info action:(id)action clientIdentifier:(id)self0 categoryIdentifier:(id)self1 expirationDate:(id)self2 criteria:(id)self3 isInvalid:(id)self4;
- (NSArray)propertyValues;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKNotificationInstructionDiagnosticDescription

- (HKNotificationInstructionDiagnosticDescription)initWithMessageIdentifier:(id)identifier creationDate:(id)date receivedDate:(id)receivedDate modificationDate:(id)modificationDate sendingDeviceName:(id)name sendingDeviceInfo:(id)info action:(id)action clientIdentifier:(id)self0 categoryIdentifier:(id)self1 expirationDate:(id)self2 criteria:(id)self3 isInvalid:(id)self4
{
  identifierCopy = identifier;
  dateCopy = date;
  receivedDateCopy = receivedDate;
  modificationDateCopy = modificationDate;
  nameCopy = name;
  infoCopy = info;
  v22 = dateCopy;
  actionCopy = action;
  clientIdentifierCopy = clientIdentifier;
  categoryIdentifierCopy = categoryIdentifier;
  expirationDateCopy = expirationDate;
  criteriaCopy = criteria;
  invalidCopy = invalid;
  v59.receiver = self;
  v59.super_class = HKNotificationInstructionDiagnosticDescription;
  v29 = [(HKNotificationInstructionDiagnosticDescription *)&v59 init];
  if (v29)
  {
    v30 = [identifierCopy copy];
    messageIdentifier = v29->_messageIdentifier;
    v29->_messageIdentifier = v30;

    v32 = [v22 copy];
    creationDate = v29->_creationDate;
    v29->_creationDate = v32;

    v34 = [receivedDateCopy copy];
    receivedDate = v29->_receivedDate;
    v29->_receivedDate = v34;

    v36 = [modificationDateCopy copy];
    modificationDate = v29->_modificationDate;
    v29->_modificationDate = v36;

    v38 = [nameCopy copy];
    sendingDeviceName = v29->_sendingDeviceName;
    v29->_sendingDeviceName = v38;

    v40 = [infoCopy copy];
    sendingDeviceInfo = v29->_sendingDeviceInfo;
    v29->_sendingDeviceInfo = v40;

    v42 = [actionCopy copy];
    action = v29->_action;
    v29->_action = v42;

    v44 = [clientIdentifierCopy copy];
    clientIdentifier = v29->_clientIdentifier;
    v29->_clientIdentifier = v44;

    v46 = [categoryIdentifierCopy copy];
    categoryIdentifier = v29->_categoryIdentifier;
    v29->_categoryIdentifier = v46;

    v48 = [expirationDateCopy copy];
    expirationDate = v29->_expirationDate;
    v29->_expirationDate = v48;

    v50 = [criteriaCopy copy];
    criteria = v29->_criteria;
    v29->_criteria = v50;

    v52 = [invalidCopy copy];
    isInvalid = v29->_isInvalid;
    v29->_isInvalid = v52;
  }

  return v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      action = self->_action;
      v7 = v5->_action;
      if (action != v7 && (!v7 || ![(NSString *)action isEqualToString:?]))
      {
        goto LABEL_41;
      }

      categoryIdentifier = self->_categoryIdentifier;
      v9 = v5->_categoryIdentifier;
      if (categoryIdentifier != v9 && (!v9 || ![(NSString *)categoryIdentifier isEqualToString:?]))
      {
        goto LABEL_41;
      }

      clientIdentifier = self->_clientIdentifier;
      v11 = v5->_clientIdentifier;
      if (clientIdentifier != v11 && (!v11 || ![(NSString *)clientIdentifier isEqualToString:?]))
      {
        goto LABEL_41;
      }

      creationDate = self->_creationDate;
      v13 = v5->_creationDate;
      if (creationDate != v13 && (!v13 || ![(NSString *)creationDate isEqualToString:?]))
      {
        goto LABEL_41;
      }

      criteria = self->_criteria;
      v15 = v5->_criteria;
      if (criteria != v15 && (!v15 || ![(NSString *)criteria isEqualToString:?]))
      {
        goto LABEL_41;
      }

      expirationDate = self->_expirationDate;
      v17 = v5->_expirationDate;
      if (expirationDate != v17 && (!v17 || ![(NSString *)expirationDate isEqualToString:?]))
      {
        goto LABEL_41;
      }

      isInvalid = self->_isInvalid;
      v19 = v5->_isInvalid;
      if (isInvalid != v19 && (!v19 || ![(NSString *)isInvalid isEqualToString:?]))
      {
        goto LABEL_41;
      }

      messageIdentifier = self->_messageIdentifier;
      v21 = v5->_messageIdentifier;
      if (messageIdentifier != v21 && (!v21 || ![(NSString *)messageIdentifier isEqualToString:?]))
      {
        goto LABEL_41;
      }

      modificationDate = self->_modificationDate;
      v23 = v5->_modificationDate;
      if (modificationDate != v23 && (!v23 || ![(NSString *)modificationDate isEqualToString:?]))
      {
        goto LABEL_41;
      }

      receivedDate = self->_receivedDate;
      v25 = v5->_receivedDate;
      if (receivedDate != v25 && (!v25 || ![(NSString *)receivedDate isEqualToString:?]))
      {
        goto LABEL_41;
      }

      sendingDeviceInfo = self->_sendingDeviceInfo;
      v27 = v5->_sendingDeviceInfo;
      if (sendingDeviceInfo != v27 && (!v27 || ![(NSString *)sendingDeviceInfo isEqualToString:?]))
      {
        goto LABEL_41;
      }

      sendingDeviceName = self->_sendingDeviceName;
      v29 = v5->_sendingDeviceName;
      if (sendingDeviceName == v29)
      {
        v30 = 1;
        goto LABEL_42;
      }

      if (v29)
      {
        v30 = [(NSString *)sendingDeviceName isEqualToString:?];
      }

      else
      {
LABEL_41:
        v30 = 0;
      }

LABEL_42:

      goto LABEL_43;
    }

    v30 = 0;
  }

LABEL_43:

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_action hash];
  v4 = [(NSString *)self->_categoryIdentifier hash]^ v3;
  v5 = [(NSString *)self->_clientIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_creationDate hash];
  v7 = [(NSString *)self->_criteria hash];
  v8 = v7 ^ [(NSString *)self->_expirationDate hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_isInvalid hash];
  v10 = [(NSString *)self->_messageIdentifier hash];
  v11 = v10 ^ [(NSString *)self->_modificationDate hash];
  v12 = v11 ^ [(NSString *)self->_receivedDate hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_sendingDeviceInfo hash];
  return v13 ^ [(NSString *)self->_sendingDeviceName hash];
}

- (NSArray)propertyValues
{
  v19 = *MEMORY[0x1E69E9840];
  messageIdentifier = self->_messageIdentifier;
  modificationDate = self->_modificationDate;
  sendingDeviceName = self->_sendingDeviceName;
  if (!sendingDeviceName)
  {
    sendingDeviceName = @"<null>";
  }

  v10 = *&self->_creationDate;
  v11 = modificationDate;
  v12 = sendingDeviceName;
  sendingDeviceInfo = self->_sendingDeviceInfo;
  v14 = *&self->_action;
  expirationDate = self->_expirationDate;
  categoryIdentifier = self->_categoryIdentifier;
  v16 = expirationDate;
  isInvalid = self->_isInvalid;
  criteria = self->_criteria;
  v18 = isInvalid;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&messageIdentifier count:12];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HKNotificationInstructionDiagnosticDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageIdentifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receivedDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendingDeviceName"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendingDeviceInfo"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInvalid"];

  v15 = [(HKNotificationInstructionDiagnosticDescription *)self initWithMessageIdentifier:v18 creationDate:v4 receivedDate:v5 modificationDate:v6 sendingDeviceName:v17 sendingDeviceInfo:v16 action:v7 clientIdentifier:v13 categoryIdentifier:v8 expirationDate:v9 criteria:v10 isInvalid:v11];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  messageIdentifier = self->_messageIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:messageIdentifier forKey:@"messageIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_receivedDate forKey:@"receivedDate"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [coderCopy encodeObject:self->_sendingDeviceName forKey:@"sendingDeviceName"];
  [coderCopy encodeObject:self->_sendingDeviceInfo forKey:@"sendingDeviceInfo"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
  [coderCopy encodeObject:self->_categoryIdentifier forKey:@"categoryIdentifier"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_criteria forKey:@"criteria"];
  [coderCopy encodeObject:self->_isInvalid forKey:@"isInvalid"];
}

@end