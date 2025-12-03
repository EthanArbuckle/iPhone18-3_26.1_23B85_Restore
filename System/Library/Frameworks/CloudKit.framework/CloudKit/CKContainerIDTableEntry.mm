@interface CKContainerIDTableEntry
- (BOOL)matchesContainerID:(id)d;
- (CKContainerIDTableEntry)initWithCKContainerID:(id)d;
- (id)containerID;
@end

@implementation CKContainerIDTableEntry

- (CKContainerIDTableEntry)initWithCKContainerID:(id)d
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = CKContainerIDTableEntry;
  v8 = [(CKContainerIDTableEntry *)&v14 init];
  if (v8)
  {
    v9 = objc_msgSend_containerIdentifier(dCopy, v6, v7);
    containerIdentifier = v8->_containerIdentifier;
    v8->_containerIdentifier = v9;

    v8->_environment = objc_msgSend_environment(dCopy, v11, v12);
    objc_storeStrong(&v8->_containerID, d);
  }

  return v8;
}

- (id)containerID
{
  containerID = self->_containerID;
  if (!containerID)
  {
    v4 = [CKContainerID alloc];
    v6 = objc_msgSend_initWithContainerIdentifier_environment_(v4, v5, self->_containerIdentifier, self->_environment);
    v7 = self->_containerID;
    self->_containerID = v6;

    containerID = self->_containerID;
  }

  return containerID;
}

- (BOOL)matchesContainerID:(id)d
{
  dCopy = d;
  environment = self->_environment;
  if (environment == objc_msgSend_environment(dCopy, v6, v7))
  {
    v11 = objc_msgSend_containerIdentifier(dCopy, v8, v9);
    containerIdentifier = self->_containerIdentifier;
    v13 = v11 == containerIdentifier || objc_msgSend_isEqualToString_(containerIdentifier, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end