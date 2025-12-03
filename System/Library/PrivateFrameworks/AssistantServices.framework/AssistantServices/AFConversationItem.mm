@interface AFConversationItem
- (AFConversationItem)initWithDelegateItem:(id)item;
- (AFConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 persistentAcrossInvocations:(BOOL)self4 associatedDataStore:(id)self5;
- (AFConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 persistentAcrossInvocations:(BOOL)self2 associatedDataStore:(id)self3;
@end

@implementation AFConversationItem

- (AFConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 persistentAcrossInvocations:(BOOL)self2 associatedDataStore:(id)self3
{
  v16 = MEMORY[0x1E696AFB0];
  storeCopy = store;
  identifierCopy = identifier;
  phaseCopy = phase;
  objectCopy = object;
  v21 = objc_alloc_init(v16);
  v22 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  BYTE4(v25) = invocations;
  BYTE3(v25) = experience;
  BYTE2(v25) = supplemental;
  BYTE1(v25) = transient;
  LOBYTE(v25) = virgin;
  v23 = [AFConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" revisionIdentifier:v21 type:v22 aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:identifierCopy transient:v25 supplemental:storeCopy immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  return v23;
}

- (AFConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 persistentAcrossInvocations:(BOOL)self4 associatedDataStore:(id)self5
{
  storeCopy = store;
  commandIdentifierCopy = commandIdentifier;
  phaseCopy = phase;
  objectCopy = object;
  revisionIdentifierCopy = revisionIdentifier;
  identifierCopy = identifier;
  BYTE4(v28) = invocations;
  BYTE3(v28) = experience;
  *(&v28 + 1) = __PAIR16__(supplemental, transient);
  LOBYTE(v28) = virgin;
  v25 = [AFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" revisionIdentifier:identifierCopy type:revisionIdentifierCopy aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:commandIdentifierCopy transient:v28 supplemental:storeCopy immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  v26 = [(AFConversationItem *)self initWithDelegateItem:v25];
  return v26;
}

- (AFConversationItem)initWithDelegateItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = AFConversationItem;
  v6 = [(AFConversationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateItem, item);
  }

  return v7;
}

@end