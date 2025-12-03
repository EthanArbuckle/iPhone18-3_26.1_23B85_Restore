@interface AFConversationInsertion
- (AFConversationInsertion)initWithConversationItemType:(int64_t)type aceObject:(id)object aceCommandIdentifier:(id)identifier transient:(BOOL)transient supplemental:(BOOL)supplemental immersiveExperience:(BOOL)experience persistentAcrossInvocations:(BOOL)invocations indexPath:(id)self0;
@end

@implementation AFConversationInsertion

- (AFConversationInsertion)initWithConversationItemType:(int64_t)type aceObject:(id)object aceCommandIdentifier:(id)identifier transient:(BOOL)transient supplemental:(BOOL)supplemental immersiveExperience:(BOOL)experience persistentAcrossInvocations:(BOOL)invocations indexPath:(id)self0
{
  objectCopy = object;
  identifierCopy = identifier;
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = AFConversationInsertion;
  v20 = [(AFConversationInsertion *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_conversationItemType = type;
    objc_storeStrong(&v20->_aceObject, object);
    v22 = [identifierCopy copy];
    aceCommandIdentifier = v21->_aceCommandIdentifier;
    v21->_aceCommandIdentifier = v22;

    v21->_transient = transient;
    v21->_supplemental = supplemental;
    v21->_immersiveExperience = experience;
    v21->_persistentAcrossInvocations = invocations;
    v24 = [pathCopy copy];
    indexPath = v21->_indexPath;
    v21->_indexPath = v24;
  }

  return v21;
}

@end