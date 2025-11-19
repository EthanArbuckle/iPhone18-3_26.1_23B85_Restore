@interface AFConversationItem
- (AFConversationItem)initWithDelegateItem:(id)a3;
- (AFConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 persistentAcrossInvocations:(BOOL)a14 associatedDataStore:(id)a15;
- (AFConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 persistentAcrossInvocations:(BOOL)a12 associatedDataStore:(id)a13;
@end

@implementation AFConversationItem

- (AFConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 persistentAcrossInvocations:(BOOL)a12 associatedDataStore:(id)a13
{
  v16 = MEMORY[0x1E696AFB0];
  v17 = a13;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = objc_alloc_init(v16);
  v22 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  BYTE4(v25) = a12;
  BYTE3(v25) = a11;
  BYTE2(v25) = a10;
  BYTE1(v25) = a9;
  LOBYTE(v25) = a8;
  v23 = [AFConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" revisionIdentifier:v21 type:v22 aceObject:a3 dialogPhase:v20 presentationState:v19 aceCommandIdentifier:a6 virgin:v18 transient:v25 supplemental:v17 immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  return v23;
}

- (AFConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 persistentAcrossInvocations:(BOOL)a14 associatedDataStore:(id)a15
{
  v19 = a15;
  v20 = a9;
  v21 = a7;
  v22 = a6;
  v23 = a4;
  v24 = a3;
  BYTE4(v28) = a14;
  BYTE3(v28) = a13;
  *(&v28 + 1) = __PAIR16__(a12, a11);
  LOBYTE(v28) = a10;
  v25 = [AFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" revisionIdentifier:v24 type:v23 aceObject:a5 dialogPhase:v22 presentationState:v21 aceCommandIdentifier:a8 virgin:v20 transient:v28 supplemental:v19 immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  v26 = [(AFConversationItem *)self initWithDelegateItem:v25];
  return v26;
}

- (AFConversationItem)initWithDelegateItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFConversationItem;
  v6 = [(AFConversationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateItem, a3);
  }

  return v7;
}

@end