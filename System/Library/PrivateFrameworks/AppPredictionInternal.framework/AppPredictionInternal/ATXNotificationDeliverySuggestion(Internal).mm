@interface ATXNotificationDeliverySuggestion(Internal)
- (id)feedbackKey;
@end

@implementation ATXNotificationDeliverySuggestion(Internal)

- (id)feedbackKey
{
  subObject = [self subObject];
  if (subObject && (v3 = subObject, [self subObject], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "conformsToProtocol:", &unk_283B11A98), v4, v3, v5))
  {
    subObject2 = [self subObject];
    feedbackKeyComponent = [subObject2 feedbackKeyComponent];
  }

  else
  {
    feedbackKeyComponent = &stru_2839A6058;
  }

  v8 = MEMORY[0x277CCACA8];
  [self subtype];
  v9 = ATXSuggestionTypeToString();
  entityIdentifier = [self entityIdentifier];
  [self scope];
  v11 = ATXNotificationSuggestionScopeToString();
  v12 = [v8 stringWithFormat:@"subtype:%@_entityIdentifier:%@_scope:%@", v9, entityIdentifier, v11];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"primary:%@__subobject:%@", v12, feedbackKeyComponent];

  return v13;
}

@end