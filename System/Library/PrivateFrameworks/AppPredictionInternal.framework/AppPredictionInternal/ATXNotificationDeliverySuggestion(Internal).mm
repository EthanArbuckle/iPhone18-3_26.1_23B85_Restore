@interface ATXNotificationDeliverySuggestion(Internal)
- (id)feedbackKey;
@end

@implementation ATXNotificationDeliverySuggestion(Internal)

- (id)feedbackKey
{
  v2 = [a1 subObject];
  if (v2 && (v3 = v2, [a1 subObject], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "conformsToProtocol:", &unk_283B11A98), v4, v3, v5))
  {
    v6 = [a1 subObject];
    v7 = [v6 feedbackKeyComponent];
  }

  else
  {
    v7 = &stru_2839A6058;
  }

  v8 = MEMORY[0x277CCACA8];
  [a1 subtype];
  v9 = ATXSuggestionTypeToString();
  v10 = [a1 entityIdentifier];
  [a1 scope];
  v11 = ATXNotificationSuggestionScopeToString();
  v12 = [v8 stringWithFormat:@"subtype:%@_entityIdentifier:%@_scope:%@", v9, v10, v11];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"primary:%@__subobject:%@", v12, v7];

  return v13;
}

@end