@interface AFMutableConversationItem
- (AFMutableConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 persistentAcrossInvocations:(BOOL)a14 associatedDataStore:(id)a15;
- (AFMutableConversationItem)initWithIdentifier:(id)a3 type:(int64_t)a4 aceObject:(id)a5 dialogPhase:(id)a6 presentationState:(int64_t)a7 aceCommandIdentifier:(id)a8 virgin:(BOOL)a9 transient:(BOOL)a10 supplemental:(BOOL)a11 immersiveExperience:(BOOL)a12 persistentAcrossInvocations:(BOOL)a13 associatedDataStore:(id)a14;
- (AFMutableConversationItem)initWithPropertyListRepresentation:(id)a3;
- (AFMutableConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 persistentAcrossInvocations:(BOOL)a12 associatedDataStore:(id)a13;
- (BOOL)_shouldRedactSpeakableText;
- (NSString)description;
- (id)_propertyListStringForPresentationState;
- (id)_propertyListStringForType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertyListRepresentation;
- (int64_t)_presentationStateForPropertyListString:(id)a3;
- (int64_t)_typeForPropertyListString:(id)a3;
- (void)_didMutate;
- (void)setAceObject:(id)a3;
- (void)setDialogPhase:(id)a3;
@end

@implementation AFMutableConversationItem

- (NSString)description
{
  v3 = [(AFMutableConversationItem *)self type];
  if (v3 > 5)
  {
    v33 = 0;
  }

  else
  {
    v33 = off_1E7341FC0[v3];
  }

  v4 = [(AFMutableConversationItem *)self presentationState];
  if (v4 > 3)
  {
    v31 = 0;
  }

  else
  {
    v31 = off_1E7341FF0[v4];
  }

  v5 = [(AFMutableConversationItem *)self aceObject];
  v6 = [v5 af_dialogIdentifier];

  if (v6)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dialogIdentifier=%@", v6];
  }

  else
  {
    v32 = &stru_1F0512680;
  }

  if ([(AFMutableConversationItem *)self _shouldRedactSpeakableText])
  {
    v7 = @"<private>";
    v8 = @"<private>";
LABEL_13:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dialogText=%@", v7];
    goto LABEL_14;
  }

  v9 = [(AFMutableConversationItem *)self aceObject];
  v7 = [v9 af_text];

  v10 = [(AFMutableConversationItem *)self aceObject];
  v8 = [v10 af_speakableText];

  if (v7)
  {
    goto LABEL_13;
  }

  v11 = &stru_1F0512680;
LABEL_14:
  v34 = v6;
  v29 = v8;
  v30 = v7;
  if (v8)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, speakableText=%@", v11, v8];

    v28 = v12;
  }

  else
  {
    v28 = v11;
  }

  v25 = MEMORY[0x1E696AEC0];
  v27 = [(AFMutableConversationItem *)self identifier];
  v24 = [v27 UUIDString];
  v26 = [(AFMutableConversationItem *)self revisionIdentifier];
  v13 = [v26 UUIDString];
  v14 = [(AFMutableConversationItem *)self aceObject];
  v23 = objc_opt_class();
  v15 = [(AFMutableConversationItem *)self dialogPhase];
  v16 = [(AFMutableConversationItem *)self aceCommandIdentifier];
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

  v21 = [v25 stringWithFormat:@"<ConversationItem %p %@ (revision %@): type=%@, aceObject=%@, dialogPhase=%@, presentationState=%@, aceCommandIdentifier=%@%@%@, transient=%@, supplemental=%@, immersiveExperience=%@, persistentAcrossInvocations=%@>", self, v24, v13, v33, v23, v15, v31, v16, v32, v28, v17, v18, v19, v20];;

  return v21;
}

- (BOOL)_shouldRedactSpeakableText
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(AFMutableConversationItem *)self aceObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    LODWORD(v3) = [v2 canUseServerTTS] ^ 1;
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
      v3 = [v2 views];
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
              objc_enumerationMutation(v3);
            }

            if (![*(*(&v10 + 1) + 8 * i) canUseServerTTS])
            {

              LOBYTE(v3) = 1;
              goto LABEL_5;
            }
          }

          v7 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    LOBYTE(v3) = 0;
  }

LABEL_5:

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:&unk_1F056D038 forKey:@"Version"];
  v4 = [(AFMutableConversationItem *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"Identifier"];

  v6 = [(AFMutableConversationItem *)self revisionIdentifier];
  v7 = [v6 UUIDString];
  [v3 setObject:v7 forKey:@"RevisionIdentifier"];

  v8 = [(AFMutableConversationItem *)self _propertyListStringForType];
  [v3 setObject:v8 forKey:@"Type"];

  v9 = [(AFMutableConversationItem *)self aceObject];
  v10 = [v9 dictionary];
  [v3 setObject:v10 forKey:@"AceObject"];

  v11 = [(AFMutableConversationItem *)self dialogPhase];
  v12 = [v11 aceDialogPhaseValue];

  if (v12)
  {
    [v3 setObject:v12 forKey:@"AceDialogPhase"];
  }

  v13 = [(AFMutableConversationItem *)self _propertyListStringForPresentationState];
  [v3 setObject:v13 forKey:@"PresentationState"];

  v14 = [(AFMutableConversationItem *)self aceCommandIdentifier];
  if (v14)
  {
    [v3 setObject:v14 forKey:@"AceCommandIdentifier"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isTransient](self, "isTransient")}];
  [v3 setObject:v15 forKey:@"Transient"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isSupplemental](self, "isSupplemental")}];
  [v3 setObject:v16 forKey:@"Supplemental"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isImmersiveExperience](self, "isImmersiveExperience")}];
  [v3 setObject:v17 forKey:@"ImmersiveExperience"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFMutableConversationItem isPersistentAcrossInvocations](self, "isPersistentAcrossInvocations")}];
  [v3 setObject:v18 forKey:@"PersistentAcrossInvocations"];

  v19 = [(AFMutableConversationItem *)self associatedDataStore];
  v20 = [v19 propertyListRepresentation];

  [v3 setObject:v20 forKey:@"AssociatedDataStore"];

  return v3;
}

- (id)_propertyListStringForType
{
  v2 = [(AFMutableConversationItem *)self type];
  if ((v2 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7342010[v2 - 1];
  }
}

- (id)_propertyListStringForPresentationState
{
  v2 = [(AFMutableConversationItem *)self presentationState];
  if ((v2 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7342038[v2 - 1];
  }
}

- (AFMutableConversationItem)initWithPropertyListRepresentation:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v9 = self;
  v72 = v9;
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
  v13 = v9;
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
  v20 = [(AFDictionarySchema *)v5 coerceObject:v4 error:&v68];
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
    v78 = v4;
    v32 = "%s returning nil; passed invalid property list (%{public}@): %@";
    v33 = v31;
    v34 = 32;
LABEL_20:
    _os_log_error_impl(&dword_1912FE000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    goto LABEL_10;
  }

  v22 = [v20 objectForKey:@"Version"];
  v23 = [v22 integerValue];

  if (v23 != 1)
  {
    v35 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    v74 = "[AFMutableConversationItem initWithPropertyListRepresentation:]";
    v75 = 2050;
    v76 = v23;
    v32 = "%s unable to deserialize property list with version %{public}ld; returning nil";
    v33 = v35;
    v34 = 22;
    goto LABEL_20;
  }

  v66 = v4;
  v64 = [v20 objectForKey:@"Identifier"];
  v24 = [v20 objectForKey:@"RevisionIdentifier"];
  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  v63 = v24;
  v25 = [v20 objectForKey:@"Type"];
  v26 = [v25 integerValue];

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
  v59 = [v37 integerValue];

  v38 = [v20 objectForKey:@"AceCommandIdentifier"];
  v39 = [v20 objectForKey:@"Transient"];
  v40 = [v39 BOOLValue];

  v41 = [v20 objectForKey:@"Supplemental"];
  v42 = [v41 BOOLValue];

  v43 = [v20 objectForKey:@"ImmersiveExperience"];
  v44 = [v43 BOOLValue];

  v45 = [v20 objectForKey:@"PersistentAcrossInvocations"];
  v46 = [v45 BOOLValue];

  v47 = [AFDataStore alloc];
  v48 = [v20 objectForKey:@"AssociatedDataStore"];
  v49 = [(AFDataStore *)v47 initWithPropertyListRepresentation:v48];

  if (v49)
  {
    BYTE4(v58) = v46;
    BYTE3(v58) = v44;
    BYTE2(v58) = v42;
    BYTE1(v58) = v40;
    LOBYTE(v58) = 0;
    v51 = v63;
    v50 = v64;
    v52 = v26;
    v54 = v61;
    v53 = v62;
    v36 = [AFMutableConversationItem initWithIdentifier:v67 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" type:v64 aceObject:v63 dialogPhase:v52 presentationState:v62 aceCommandIdentifier:v61 virgin:v59 transient:v38 supplemental:v58 immersiveExperience:v49 persistentAcrossInvocations:? associatedDataStore:?];
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

  v4 = v66;
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

- (int64_t)_presentationStateForPropertyListString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Committed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Provisional"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Cancelled"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_typeForPropertyListString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RecognizedSpeech"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"View"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PartialSpeechResult"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Help"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AcousticID Spinner"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDialogPhase:(id)a3
{
  objc_storeStrong(&self->_dialogPhase, a3);

  [(AFMutableConversationItem *)self _didMutate];
}

- (void)setAceObject:(id)a3
{
  objc_storeStrong(&self->_aceObject, a3);

  [(AFMutableConversationItem *)self _didMutate];
}

- (void)_didMutate
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  revisionIdentifier = self->_revisionIdentifier;
  self->_revisionIdentifier = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = [AFConversationItem alloc];
  v19 = [(AFMutableConversationItem *)self identifier];
  v18 = [(AFMutableConversationItem *)self revisionIdentifier];
  v17 = [(AFMutableConversationItem *)self type];
  v4 = [(AFMutableConversationItem *)self aceObject];
  v5 = [(AFMutableConversationItem *)self dialogPhase];
  v6 = [(AFMutableConversationItem *)self presentationState];
  v7 = [(AFMutableConversationItem *)self aceCommandIdentifier];
  v8 = [(AFMutableConversationItem *)self isVirgin];
  v9 = [(AFMutableConversationItem *)self isTransient];
  v10 = [(AFMutableConversationItem *)self isSupplemental];
  v11 = [(AFMutableConversationItem *)self isImmersiveExperience];
  v12 = [(AFMutableConversationItem *)self isPersistentAcrossInvocations];
  v13 = [(AFMutableConversationItem *)self associatedDataStore];
  BYTE4(v16) = v12;
  BYTE3(v16) = v11;
  BYTE2(v16) = v10;
  BYTE1(v16) = v9;
  LOBYTE(v16) = v8;
  v14 = [AFConversationItem initWithIdentifier:v20 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" type:v19 aceObject:v18 dialogPhase:v17 presentationState:v4 aceCommandIdentifier:v5 virgin:v6 transient:v7 supplemental:v16 immersiveExperience:v13 persistentAcrossInvocations:? associatedDataStore:?];

  return v14;
}

- (AFMutableConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 persistentAcrossInvocations:(BOOL)a12 associatedDataStore:(id)a13
{
  v17 = MEMORY[0x1E696AFB0];
  v18 = a13;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = objc_alloc_init(v17);
  BYTE4(v25) = a12;
  BYTE3(v25) = a11;
  BYTE2(v25) = a10;
  BYTE1(v25) = a9;
  LOBYTE(v25) = a8;
  v23 = [AFMutableConversationItem initWithIdentifier:"initWithIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" type:v22 aceObject:a3 dialogPhase:v21 presentationState:v20 aceCommandIdentifier:a6 virgin:v19 transient:v25 supplemental:v18 immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  return v23;
}

- (AFMutableConversationItem)initWithIdentifier:(id)a3 type:(int64_t)a4 aceObject:(id)a5 dialogPhase:(id)a6 presentationState:(int64_t)a7 aceCommandIdentifier:(id)a8 virgin:(BOOL)a9 transient:(BOOL)a10 supplemental:(BOOL)a11 immersiveExperience:(BOOL)a12 persistentAcrossInvocations:(BOOL)a13 associatedDataStore:(id)a14
{
  v18 = MEMORY[0x1E696AFB0];
  v19 = a14;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = objc_alloc_init(v18);
  BYTE4(v27) = a13;
  BYTE3(v27) = a12;
  BYTE2(v27) = a11;
  LOWORD(v27) = __PAIR16__(a10, a9);
  v25 = [AFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" revisionIdentifier:v23 type:v24 aceObject:a4 dialogPhase:v22 presentationState:v21 aceCommandIdentifier:a7 virgin:v20 transient:v27 supplemental:v19 immersiveExperience:? persistentAcrossInvocations:? associatedDataStore:?];

  return v25;
}

- (AFMutableConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 persistentAcrossInvocations:(BOOL)a14 associatedDataStore:(id)a15
{
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v24 = a15;
  v35.receiver = self;
  v35.super_class = AFMutableConversationItem;
  v25 = [(AFMutableConversationItem *)&v35 init];
  if (v25)
  {
    v26 = [v19 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [v20 copy];
    revisionIdentifier = v25->_revisionIdentifier;
    v25->_revisionIdentifier = v28;

    v25->_type = a5;
    objc_storeStrong(&v25->_aceObject, a6);
    objc_storeStrong(&v25->_dialogPhase, a7);
    v25->_presentationState = a8;
    v30 = [v23 copy];
    aceCommandIdentifier = v25->_aceCommandIdentifier;
    v25->_aceCommandIdentifier = v30;

    v25->_virgin = a10;
    v25->_transient = a11;
    v25->_supplemental = a12;
    v25->_immersiveExperience = a13;
    v25->_persistentAcrossInvocations = a14;
    objc_storeStrong(&v25->_associatedDataStore, a15);
  }

  return v25;
}

@end