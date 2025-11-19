@interface ATXPBDigestOnboardingSuggestionLoggingEventEnums
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ATXPBDigestOnboardingSuggestionLoggingEventEnums

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBDigestOnboardingSuggestionLoggingEventEnums;
  v4 = [(ATXPBDigestOnboardingSuggestionLoggingEventEnums *)&v8 description];
  v5 = [(ATXPBDigestOnboardingSuggestionLoggingEventEnums *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end