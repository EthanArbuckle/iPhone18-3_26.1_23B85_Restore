@interface NSUserActivity(IntentsAdditions)
- (BOOL)_hasInteraction;
- (id)_appIntent;
- (id)_intentsIdentifier;
- (id)_intents_copy;
- (id)interaction;
- (id)suggestedInvocationPhrase;
- (uint64_t)_accessedInteraction;
- (uint64_t)_executionContext;
- (uint64_t)_setAppIntent:()IntentsAdditions;
- (uint64_t)shortcutAvailability;
- (void)_initWithIntent:()IntentsAdditions;
- (void)_intentsPrepareForEncoding;
- (void)_setAccessedInteraction:()IntentsAdditions;
- (void)_setExecutionContext:()IntentsAdditions;
- (void)_setInteraction:()IntentsAdditions donate:;
- (void)setShortcutAvailability:()IntentsAdditions;
- (void)setSuggestedInvocationPhrase:()IntentsAdditions;
@end

@implementation NSUserActivity(IntentsAdditions)

- (id)suggestedInvocationPhrase
{
  v1 = [a1 _payloadForIdentifier:@"UAINSuggestedInvocationPhrasePayload"];
  if ([v1 length])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)shortcutAvailability
{
  v4 = 0;
  v1 = [a1 _payloadForIdentifier:@"UAINShortcutAvailabilityOptionsPayload"];
  v2 = 0;
  if ([v1 length] == 8)
  {
    [v1 getBytes:&v4 length:8];
    v2 = v4;
  }

  return v2;
}

- (id)_intents_copy
{
  v1 = INUserActivitySerializeToData(a1);
  v2 = INUserActivityDeserializeFromData(v1);

  return v2;
}

- (uint64_t)_executionContext
{
  v4 = 0;
  v1 = [a1 _payloadForIdentifier:@"_UAINExecutionContextPayload"];
  v2 = 0;
  if ([v1 length] == 8)
  {
    [v1 getBytes:&v4 length:8];
    v2 = v4;
  }

  return v2;
}

- (void)_setExecutionContext:()IntentsAdditions
{
  v5 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:8];
  [a1 _setPayload:v4 object:0 identifier:@"_UAINExecutionContextPayload"];
}

- (void)_intentsPrepareForEncoding
{
  v2 = [a1 _intentsIdentifier];
  v3 = [a1 interaction];
  if (v3)
  {
    v5 = v3;
    [a1 _setInteraction:0 donate:0];
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [a1 _setPayload:v4 object:v5 identifier:@"UAINInteractionPayload"];

    v3 = v5;
  }
}

- (id)_intentsIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 _payloadForIdentifier:@"UAIntentsIdentifierPayload"];
  if (!v2)
  {
    goto LABEL_7;
  }

  v13 = 0;
  v3 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v13];
  v4 = v13;
  if (v4)
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[NSUserActivity(IntentsAdditions) _intentsIdentifier]";
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Unable to unarchive intentsIdentifier with error: %@", buf, 0x16u);
    }
  }

  if (v3)
  {
    v6 = v2;
  }

  else
  {
LABEL_7:
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v7 UUIDString];

    v12 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[NSUserActivity(IntentsAdditions) _intentsIdentifier]";
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Unable to archive intentsIdentifierPayload with error: %@", buf, 0x16u);
      }
    }

    [a1 _setPayload:v6 object:v3 identifier:@"UAIntentsIdentifierPayload"];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setShortcutAvailability:()IntentsAdditions
{
  v5 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:8];
  [a1 _setPayload:v4 object:0 identifier:@"UAINShortcutAvailabilityOptionsPayload"];
}

- (void)setSuggestedInvocationPhrase:()IntentsAdditions
{
  v4 = a3;
  v5 = [v4 dataUsingEncoding:4];
  [a1 _setPayload:v5 object:v4 identifier:@"UAINSuggestedInvocationPhrasePayload"];
}

- (void)_setAccessedInteraction:()IntentsAdditions
{
  v2 = _accessedInteractionPropertyKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, v2, v3, 1);
}

- (uint64_t)_accessedInteraction
{
  v1 = objc_getAssociatedObject(a1, _accessedInteractionPropertyKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (BOOL)_hasInteraction
{
  v1 = [a1 _payloadForIdentifier:@"UAINInteractionPayload"];
  v2 = [v1 length] != 0;

  return v2;
}

- (void)_setInteraction:()IntentsAdditions donate:
{
  v6 = a3;
  v10 = v6;
  if (v6)
  {
    v7 = [v6 intent];
    INIssueSandboxExtensionsForFileURLEnumerable(v7);

    v8 = [v10 intentResponse];
    v9 = v8;
    if (v8)
    {
      INIssueSandboxExtensionsForFileURLEnumerable(v8);
    }

    if (a4)
    {
      [v10 donateInteractionWithCompletion:0];
    }

    [a1 _setPayloadIdentifier:@"UAINInteractionPayload" object:v10 withBlock:&__block_literal_global_21];
  }

  else
  {
    [a1 _setPayload:0 object:0 identifier:@"UAINInteractionPayload"];
  }
}

- (id)interaction
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 _objectForIdentifier:@"UAINInteractionPayload"];
  if (v2)
  {
LABEL_2:
    v3 = INTypedInteractionWithInteraction(v2);

    goto LABEL_3;
  }

  v3 = [a1 _payloadForIdentifier:@"UAINInteractionPayload"];
  if (v3)
  {
    v8 = 0;
    v2 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v6 = v8;
    if (v6)
    {
      v7 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "[NSUserActivity(IntentsAdditions) interaction]";
        v11 = 2112;
        v12 = v6;
        _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Unable to unarchive interactionPayloadData with error: %@", buf, 0x16u);
      }
    }

    if (v2)
    {
      goto LABEL_2;
    }

    v3 = 0;
  }

LABEL_3:
  [a1 _setAccessedInteraction:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (uint64_t)_setAppIntent:()IntentsAdditions
{
  if (a3)
  {
    return [a1 _setPayloadIdentifier:@"UAINAppIntentPayload" object:a3 withBlock:&__block_literal_global_18385];
  }

  else
  {
    return [a1 _setPayload:0 object:0 identifier:@"UAINAppIntentPayload"];
  }
}

- (id)_appIntent
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 _objectForIdentifier:@"UAINAppIntentPayload"];
  if (!v2)
  {
    v3 = [a1 _payloadForIdentifier:@"UAINAppIntentPayload"];
    if (v3)
    {
      v8 = 0;
      v2 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
      v4 = v8;
      if (v4)
      {
        v5 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v10 = "[NSUserActivity(IntentsAdditions) _appIntent]";
          v11 = 2112;
          v12 = v4;
          _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Unable to unarchive interactionPayloadData with error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_initWithIntent:()IntentsAdditions
{
  v4 = a3;
  v5 = [v4 _className];
  v6 = [a1 initWithActivityType:v5];

  if (v6)
  {
    v7 = [[INInteraction alloc] initWithIntent:v4 response:0];
    [(INInteraction *)v7 setIntentHandlingStatus:5];
    [v6 _setInteraction:v7 donate:0];
    [v6 _setExecutionContext:{objc_msgSend(v4, "_executionContext")}];
    v8 = v6;
  }

  return v6;
}

@end