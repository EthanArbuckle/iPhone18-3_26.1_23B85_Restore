@interface CHSWidget(ATXTimelineIdentifier)
- (id)atxTimelineIdentifier;
@end

@implementation CHSWidget(ATXTimelineIdentifier)

- (id)atxTimelineIdentifier
{
  intentReference = [self intentReference];
  intent = [intentReference intent];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  extensionIdentity = [self extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  kind = [self kind];
  [self family];
  v8 = NSStringFromWidgetFamily();
  v9 = v8;
  if (intent)
  {
    v10 = [v4 initWithFormat:@"%@.%@.%@.%lld", extensionBundleIdentifier, kind, v8, objc_msgSend(intent, "atx_indexingHash")];
  }

  else
  {
    v10 = [v4 initWithFormat:@"%@.%@.%@", extensionBundleIdentifier, kind, v8, v13];
  }

  v11 = v10;

  return v11;
}

@end