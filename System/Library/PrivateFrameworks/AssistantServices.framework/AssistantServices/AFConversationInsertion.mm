@interface AFConversationInsertion
- (AFConversationInsertion)initWithConversationItemType:(int64_t)a3 aceObject:(id)a4 aceCommandIdentifier:(id)a5 transient:(BOOL)a6 supplemental:(BOOL)a7 immersiveExperience:(BOOL)a8 persistentAcrossInvocations:(BOOL)a9 indexPath:(id)a10;
@end

@implementation AFConversationInsertion

- (AFConversationInsertion)initWithConversationItemType:(int64_t)a3 aceObject:(id)a4 aceCommandIdentifier:(id)a5 transient:(BOOL)a6 supplemental:(BOOL)a7 immersiveExperience:(BOOL)a8 persistentAcrossInvocations:(BOOL)a9 indexPath:(id)a10
{
  v17 = a4;
  v18 = a5;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = AFConversationInsertion;
  v20 = [(AFConversationInsertion *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_conversationItemType = a3;
    objc_storeStrong(&v20->_aceObject, a4);
    v22 = [v18 copy];
    aceCommandIdentifier = v21->_aceCommandIdentifier;
    v21->_aceCommandIdentifier = v22;

    v21->_transient = a6;
    v21->_supplemental = a7;
    v21->_immersiveExperience = a8;
    v21->_persistentAcrossInvocations = a9;
    v24 = [v19 copy];
    indexPath = v21->_indexPath;
    v21->_indexPath = v24;
  }

  return v21;
}

@end