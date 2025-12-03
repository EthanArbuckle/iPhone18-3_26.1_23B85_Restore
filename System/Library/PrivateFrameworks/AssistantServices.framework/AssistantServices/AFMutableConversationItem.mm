@interface AFMutableConversationItem
- (AFMutableConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 persistentAcrossInvocations:(BOOL)self4 associatedDataStore:(id)self5;
- (AFMutableConversationItem)initWithIdentifier:(id)identifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)virgin transient:(BOOL)self0 supplemental:(BOOL)self1 immersiveExperience:(BOOL)self2 persistentAcrossInvocations:(BOOL)self3 associatedDataStore:(id)self4;
- (AFMutableConversationItem)initWithPropertyListRepresentation:(id)representation;
- (AFMutableConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 persistentAcrossInvocations:(BOOL)self2 associatedDataStore:(id)self3;
- (BOOL)_shouldRedactSpeakableText;
- (NSString)description;
- (id)_propertyListStringForPresentationState;
- (id)_propertyListStringForType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertyListRepresentation;
- (int64_t)_presentationStateForPropertyListString:(id)string;
- (int64_t)_typeForPropertyListString:(id)string;
- (void)_didMutate;
- (void)setAceObject:(id)object;
- (void)setDialogPhase:(id)phase;
@end

@implementation AFMutableConversationItem

- (NSString)description
{
  type = [(AFMutableConversationItem *)self type];
  if (type > 5)
  {
    v33 = 0;
  }

  else
  {
    v33 = off_1E7341FC0[type];
  }

  presentationState = [(AFMutableConversationItem *)self presentationState];
  if (presentationState > 3)
  {
    v31 = 0;
  }

  else
  {
    v31 = off_1E7341FF0[presentationState];
  }

  aceObject = [(AFMutableConversationItem *)self aceObject];
  af_dialogIdentifier = [aceObject af_dialogIdentifier];

  if (af_dialogIdentifier)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dialogIdentifier=%@", af_dialogIdentifier];
  }

  else
  {
    v32 = &stru_1F0512680;
  }

  if ([(AFMutableConversationItem *)self _shouldRedactSpeakableText])
  {
    af_text = @"<private>";
    af_speakableText = @"<private>";
LABEL_13:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dialogText=%@", af_text];
    goto LABEL_14;
  }

  aceObject2 = [(AFMutableConversationItem *)self aceObject];
  af_text = [aceObject2 af_text];

  aceObject3 = [(AFMutableConversationItem *)self aceObject];
  af_speakableText = [aceObject3 af_speakableText];

  if (af_text)
  {
    goto LABEL_13;
  }

  v11 = &stru_1F0512680;
LABEL_14:
  v34 = af_dialogIdentifier;
  v29 = af_speakableText;
  v30 = af_text;
  if (af_speakableText)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, speakableText=%@", v11, af_speakableText];

    v28 = v12;
  }

  else
  {
    v28 = v11;
  }

  v25 = MEMORY[0x1E696AEC0];
  identifier = [(AFMutableConversationItem *)self identifier];
  uUIDString = [identifier UUIDString];
  revisionIdentifier = [(AFMutableConversationItem *)self revisionIdentifier];
  uUIDString2 = [revisionIdentifier UUIDString];
  aceObject4 = [(AFMutableConversationItem *)self aceObject];
  v23 = objc_opt_class();
  dialogPhase = [(AFMutableConversationItem *)self dialogPhase];
  aceCommandIdentifier = [(AFMutableConversationItem *)self aceCommandIdentifier];
  if ([(AFMutableConversationItem *)self isTransient])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ([(AFMutableConversationItem *)self isSupplemental])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if ([(AFMutableConversationItem *)self isImmersiveExperience])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if ([(AFMutableConversationItem *)self isPersistentAcrossInvocations])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [v25 stringWithFormat:@"<ConversationItem %p %@ (revision %@): type=%@, aceObject=%@, dialogPhase=%@, presentationState=%@, aceCommandIdentifier=%@%@%@, transient=%@, supplemental=%@, immersiveExperience=%@, persistentAcrossInvocations=%@>", self, uUIDString, uUIDString2, v33, v23, dialogPhase, v31, aceCommandIdentifier, v32, v28, v17, v18, v19, v20];;

  return v21;
}

- (BOOL)_shouldRedactSpeakableText
{
  v15 = *MEMORY[0x1E69E9840];
  aceObject = [(AFMutableConversationItem *)self aceObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    LODWORD(views) = [aceObject canUseServerTTS] ^ 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      views = [aceObject views];
      v6 = [views countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(views);
            }

            if (![*(*(&v10 + 1) + 8 * i) canUseServerTTS])
            {

              LOBYTE(views) = 1;
              goto LABEL_5;
            }
          }

          v7 = [views countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    LOBYTE(views) = 0;
  }

LABEL_5:

  v4 = *MEMORY[0x1E69E9840];
  return views;
}

- (id)propertyListRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F056D038 forKey:@"Version"];
  identifier = [(AFMutableConversationItem *)self identifier];
  uUIDString = [identifier UUIDString];
  [dictionary setObject:uUIDString forKey:@"Identifier"];

  revisionIdentifier = [(AFMutableConversationItem *)self revisionIdentifier];
  uUIDString2 = [revisionIdentifier UUIDString];
  [dictionary setObject:uUIDString2 forKey:@"RevisionIdentifier"];

  _propertyListStringForType = [(AFMutableConversationItem *)self _propertyListStringForType];
  [dictionary setObject:_propertyListStringForType forKey:@"Type"];

  aceObject = [(AFMutableConversationItem *)self aceObject];
  dictionary2 = [aceObject dictionary];
  [dictionary setObject:dictionary2 forKey:@"AceObject"];

  dialogPhase = [(AFMutableConversationItem *)self dialogPhase];
  aceDialogPhaseValue = [dialogPhase aceDialogPhaseValue];

  if (aceDialogPhaseValue)
  {
    [dictionary setObject:aceDialogPhaseValue forKey:@"AceDialogPhase"];
  }

  _propertyListStringForPresentationState = [(AFMutableConversationItem *)self _propertyListStringForPresentationState];
  [dictionary setObject:_propertyListStringForPresentationState forKey:@"PresentationState"];

  aceCommandIdentifier = [(AFMutableConversationItem *)self aceCommandIdentifier];
  if (aceCommandIdentifier)
  {
    [dictionary setObject:aceCommandIdentifier forKey:@"AceCommandIdentifier"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isTransient](self, "isTransient")}];
  [dictionary setObject:v15 forKey:@"Transient"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isSupplemental](self, "isSupplemental")}];
  [dictionary setObject:v16 forKey:@"Supplemental"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isImmersiveExperience](self, "isImmersiveExperience")}];
  [dictionary setObject:v17 forKey:@"ImmersiveExperience"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isPersistentAcrossInvocations](self, "isPersistentAcrossInvocations")}];
  [dictionary setObject:v18 forKey:@"PersistentAcrossInvocations"];

  associatedDataStore = [(AFMutableConversationItem *)self associatedDataStore];
  propertyListRepresentation = [associatedDataStore propertyListRepresentation];

  [dictionary setObject:propertyListRepresentation forKey:@"AssociatedDataStore"];

  return dictionary;
}

- (id)_propertyListStringForType
{
  type = [(AFMutableConversationItem *)self type];
  if ((type - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7342010[type - 1];
  }
}

- (id)_propertyListStringForPresentationState
{
  presentationState = [(AFMutableConversationItem *)self presentationState];
  if ((presentationState - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7342038[presentationState - 1];
  }
}

- (AFMutableConversationItem)initWithPropertyListRepresentation:(id)representation
{
  v79 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = objc_alloc_init(AFDictionarySchema);
  v6 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Version"];

  v7 = +[AFCoercion stringToUUIDCoercion];
  [(AFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Identifier"];

  v8 = +[AFCoercion stringToUUIDCoercion];
  [(AFDictionarySchema *)v5 setObjectCoercion:v8 forKey:@"RevisionIdentifier"];

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __64__AFMutableConversationItem_initWithPropertyListRepresentation___block_invoke;
  v71[3] = &unk_1E7341FA0;
  selfCopy = self;
  v72 = selfCopy;
  v10 = [AFCoercion coercionWithBlock:v71];
  [(AFDictionarySchema *)v5 setObjectCoercion:v10 forKey:@"Type"];

  v11 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v11 forKey:@"AceObject"];

  v12 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v12 forKey:@"AceDialogPhase"];

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __64__AFMutableConversationItem_initWithPropertyListRepresentation___block_invoke_2;
  v69[3] = &unk_1E7341FA0;
  v13 = selfCopy;
  v70 = v13;
  v14 = [AFCoercion coercionWithBlock:v69];
  [(AFDictionarySchema *)v5 setObjectCoercion:v14 forKey:@"PresentationState"];

  v15 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v15 forKey:@"AceCommandIdentifier"];

  v16 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v16 forKey:@"Transient"];

  v17 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v17 forKey:@"Supplemental"];

  v18 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v18 forKey:@"ImmersiveExperience"];

  v19 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v19 forKey:@"PersistentAcrossInvocations"];

  v68 = 0;
  v20 = [(AFDictionarySchema *)v5 coerceObject:representationCopy error:&v68];
  v21 = v68;
  if (!v20)
  {
    v31 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v36 = 0;
      goto LABEL_18;
    }

    *buf = 136315650;
    v74 = "[AFMutableConversationItem initWithPropertyListRepresentation:]";
    v75 = 2114;
    v76 = v21;
    v77 = 2112;
    v78 = representationCopy;
    v32 = "%s returning nil; passed invalid property list (%{public}@): %@";
    v33 = v31;
    v34 = 32;
LABEL_20:
    _os_log_error_impl(&dword_1912FE000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    goto LABEL_10;
  }

  v22 = [v20 objectForKey:@"Version"];
  integerValue = [v22 integerValue];

  if (integerValue != 1)
  {
    v35 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    v74 = "[AFMutableConversationItem initWithPropertyListRepresentation:]";
    v75 = 2050;
    v76 = integerValue;
    v32 = "%s unable to deserialize property list with version %{public}ld; returning nil";
    v33 = v35;
    v34 = 22;
    goto LABEL_20;
  }

  v66 = representationCopy;
  v64 = [v20 objectForKey:@"Identifier"];
  v24 = [v20 objectForKey:@"RevisionIdentifier"];
  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  v63 = v24;
  v25 = [v20 objectForKey:@"Type"];
  integerValue2 = [v25 integerValue];

  v27 = MEMORY[0x1E69C76D8];
  v28 = [v20 objectForKey:@"AceObject"];
  v29 = [v27 aceObjectWithDictionary:v28];

  v30 = [v20 objectForKey:@"AceDialogPhase"];
  v65 = v21;
  v62 = v29;
  v60 = v30;
  v67 = v13;
  if (v30)
  {
    [AFDialogPhase dialogPhaseForAceDialogPhase:v30];
  }

  else
  {
    +[AFDialogPhase userRequestDialogPhase];
  }
  v61 = ;
  v37 = [v20 objectForKey:@"PresentationState"];
  integerValue3 = [v37 integerValue];

  v38 = [v20 objectForKey:@"AceCommandIdentifier"];
  v39 = [v20 objectForKey:@"Transient"];
  bOOLValue = [v39 BOOLValue];

  v41 = [v20 objectForKey:@"Supplemental"];
  bOOLValue2 = [v41 BOOLValue];

  v43 = [v20 objectForKey:@"ImmersiveExperience"];
  bOOLValue3 = [v43 BOOLValue];

  v45 = [v20 objectForKey:@"PersistentAcrossInvocations"];
  bOOLValue4 = [v45 BOOLValue];

  v47 = [AFDataStore alloc];
  v48 = [v20 objectForKey:@"AssociatedDataStore"];
  v49 = [(AFDataStore *)v47 initWithPropertyListRepresentation:v48];

  if (v49)
  {
    BYTE4(v58) = bOOLValue4;
    BYTE3(v58) = bOOLValue3;
    BYTE2(v58) = bOOLValue2;
    BYTE1(v58) = bOOLValue;
    LOBYTE(v58) = 0;
    v51 = v63;
    v50 = v64;
    v52 = integerValue2;
    v54 = v61;
    v53 = v62;
    v36 = [AFMutableConversationItem initWithIdentifier:v67 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" type:v64 aceObject:v63 dialogPhase:v52 presentationState:v62 aceCommandIdentifier:v61 virgin:integerValue3 transient:v38 supplemental:v58 immersiveExperience:v49 persistentAcrossInvocations:? associatedDataStore:?];
    v67 = v36;
    v21 = v65;
  }

  else
  {
    v55 = AFSiriLogContextConnection;
    v21 = v65;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v74 = "[AFMutableConversationItem initWithPropertyListRepresentation:]";
      v75 = 2112;
      v76 = v66;
      _os_log_error_impl(&dword_1912FE000, v55, OS_LOG_TYPE_ERROR, "%s returning nil; unable co create associated data store from property list %@", buf, 0x16u);
    }

    v36 = 0;
    v51 = v63;
    v50 = v64;
    v54 = v61;
    v53 = v62;
  }

  representationCopy = v66;
  v13 = v67;
LABEL_18:

  v56 = *MEMORY[0x1E69E9840];
  return v36;
}

id __64__AFMutableConversationItem_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  v7 = [v6 coerceObject:v5 error:a3];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "_typeForPropertyListString:", v7)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __64__AFMutableConversationItem_initWithPropertyListRepresentation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  v7 = [v6 coerceObject:v5 error:a3];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "_presentationStateForPropertyListString:", v7)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_presentationStateForPropertyListString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Committed"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Provisional"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Cancelled"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_typeForPropertyListString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"RecognizedSpeech"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"View"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"PartialSpeechResult"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Help"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"AcousticID Spinner"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDialogPhase:(id)phase
{
  objc_storeStrong(&self->_dialogPhase, phase);

  [(AFMutableConversationItem *)self _didMutate];
}

- (void)setAceObject:(id)object
{
  objc_storeStrong(&self->_aceObject, object);

  [(AFMutableConversationItem *)self _didMutate];
}

- (void)_didMutate
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  revisionIdentifier = self->_revisionIdentifier;
  self->_revisionIdentifier = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [AFConversationItem alloc];
  identifier = [(AFMutableConversationItem *)self identifier];
  revisionIdentifier = [(AFMutableConversationItem *)self revisionIdentifier];
  type = [(AFMutableConversationItem *)self type];
  aceObject = [(AFMutableConversationItem *)self aceObject];
  dialogPhase = [(AFMutableConversationItem *)self dialogPhase];
  presentationState = [(AFMutableConversationItem *)self presentationState];
  aceCommandIdentifier = [(AFMutableConversationItem *)self aceCommandIdentifier];
  isVirgin = [(AFMutableConversationItem *)self isVirgin];
  isTransient = [(AFMutableConversationItem *)self isTransient];
  isSupplemental = [(AFMutableConversationItem *)self isSupplemental];
  isImmersiveExperience = [(AFMutableConversationItem *)self isImmersiveExperience];
  isPersistentAcrossInvocations = [(AFMutableConversationItem *)self isPersistentAcrossInvocations];
  associatedDataStore = [(AFMutableConversationItem *)self associatedDataStore];
  BYTE4(v16) = isPersistentAcrossInvocations;
  BYTE3(v16) = isImmersiveExperience;
  BYTE2(v16) = isSupplemental;
  BYTE1(v16) = isTransient;
  LOBYTE(v16) = isVirgin;
  v14 = [AFConversationItem initWithIdentifier:v20 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" type:identifier aceObject:revisionIdentifier dialogPhase:type presentationState:aceObject aceCommandIdentifier:dialogPhase virgin:presentationState transient:aceCommandIdentifier supplemental:v16 immersiveExperience:associatedDataStore persistentAcrossInvocations:? associatedDataStore:?];

  return v14;
}

- (AFMutableConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 persistentAcrossInvocations:(BOOL)self2 associatedDataStore:(id)self3
{
  v17 = MEMORY[0x1E696AFB0];
  storeCopy = store;
  identifierCopy = identifier;
  phaseCopy = phase;
  objectCopy = object;
  v22 = objc_alloc_init(v17);
  BYTE4(v25) = invocations;
  BYTE3(v25) = experience;
  BYTE2(v25) = supplemental;
  BYTE1(v25) = transient;
  LOBYTE(v25) = virgin;
  v23 = [AFMutableConversationItem initWithIdentifier:"initWithIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" type:v22 aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:identifierCopy transient:v25 supplemental:storeCopy immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  return v23;
}

- (AFMutableConversationItem)initWithIdentifier:(id)identifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)virgin transient:(BOOL)self0 supplemental:(BOOL)self1 immersiveExperience:(BOOL)self2 persistentAcrossInvocations:(BOOL)self3 associatedDataStore:(id)self4
{
  v18 = MEMORY[0x1E696AFB0];
  storeCopy = store;
  commandIdentifierCopy = commandIdentifier;
  phaseCopy = phase;
  objectCopy = object;
  identifierCopy = identifier;
  v24 = objc_alloc_init(v18);
  BYTE4(v27) = invocations;
  BYTE3(v27) = experience;
  BYTE2(v27) = supplemental;
  LOWORD(v27) = __PAIR16__(transient, virgin);
  v25 = [AFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" revisionIdentifier:identifierCopy type:v24 aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:commandIdentifierCopy transient:v27 supplemental:storeCopy immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  return v25;
}

- (AFMutableConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 persistentAcrossInvocations:(BOOL)self4 associatedDataStore:(id)self5
{
  identifierCopy = identifier;
  revisionIdentifierCopy = revisionIdentifier;
  objectCopy = object;
  phaseCopy = phase;
  commandIdentifierCopy = commandIdentifier;
  storeCopy = store;
  v35.receiver = self;
  v35.super_class = AFMutableConversationItem;
  v25 = [(AFMutableConversationItem *)&v35 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [revisionIdentifierCopy copy];
    revisionIdentifier = v25->_revisionIdentifier;
    v25->_revisionIdentifier = v28;

    v25->_type = type;
    objc_storeStrong(&v25->_aceObject, object);
    objc_storeStrong(&v25->_dialogPhase, phase);
    v25->_presentationState = state;
    v30 = [commandIdentifierCopy copy];
    aceCommandIdentifier = v25->_aceCommandIdentifier;
    v25->_aceCommandIdentifier = v30;

    v25->_virgin = virgin;
    v25->_transient = transient;
    v25->_supplemental = supplemental;
    v25->_immersiveExperience = experience;
    v25->_persistentAcrossInvocations = invocations;
    objc_storeStrong(&v25->_associatedDataStore, store);
  }

  return v25;
}

@end