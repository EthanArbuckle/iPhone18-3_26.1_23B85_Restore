@interface _LSApplicationState
- (BOOL)isRestricted;
- (_LSApplicationState)initWithBundleIdentifier:(id)identifier stateFlags:(unint64_t)flags ratingRank:(int)rank installType:(unint64_t)type;
- (_LSApplicationState)initWithCoder:(id)coder;
- (id)description;
- (uint64_t)_isRestrictedByRatingRankWithStateProvider:(uint64_t)provider;
- (unint64_t)restrictionReason;
- (unint64_t)restrictionReasonWithStateProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSApplicationState

- (BOOL)isRestricted
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  defaultStateProvider = [(LSApplicationRestrictionsManager *)v3 defaultStateProvider];
  LOBYTE(self) = [(_LSApplicationState *)self isRestrictedWithStateProvider:defaultStateProvider];

  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleIdentifier = self->_bundleIdentifier;
  if ([(_LSApplicationState *)self isValid])
  {
    v5 = &stru_1EEF65710;
  }

  else
  {
    v5 = @"INVALID";
  }

  if ([(_LSApplicationState *)self isPlaceholder])
  {
    v6 = @"placeholder";
  }

  else
  {
    v6 = &stru_1EEF65710;
  }

  if ([(_LSApplicationState *)self isInstalled])
  {
    v7 = @"installed";
  }

  else
  {
    v7 = &stru_1EEF65710;
  }

  if ([(_LSApplicationState *)self isBlocked])
  {
    v8 = @"(blocked)";
  }

  else
  {
    v8 = &stru_1EEF65710;
  }

  if ([(_LSApplicationState *)self isRemovedSystemApp])
  {
    v9 = @"(removedSystemApp)";
  }

  else
  {
    v9 = &stru_1EEF65710;
  }

  isRestricted = [(_LSApplicationState *)self isRestricted];
  v11 = @"(restricted)";
  if (!isRestricted)
  {
    v11 = &stru_1EEF65710;
  }

  return [v3 stringWithFormat:@"%@ <%@%@%@ %@%@%@>", bundleIdentifier, v5, v6, v7, v8, v9, v11];
}

- (unint64_t)restrictionReason
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  defaultStateProvider = [(LSApplicationRestrictionsManager *)v3 defaultStateProvider];
  v5 = [(_LSApplicationState *)self restrictionReasonWithStateProvider:defaultStateProvider];

  return v5;
}

- (unint64_t)restrictionReasonWithStateProvider:(id)provider
{
  providerCopy = provider;
  if ([(_LSApplicationState *)self isPlaceholder]&& (self->_stateFlags & 0x20) != 0)
  {
    v6 = 5;
  }

  else
  {
    v5 = +[LSApplicationRestrictionsManager sharedInstance];
    v6 = [(LSApplicationRestrictionsManager *)v5 reasonForApplicationRestriction:self->_stateFlags checkFlags:providerCopy stateProvider:?];

    if (!v6)
    {
      v6 = [(_LSApplicationState *)self _isRestrictedByRatingRankWithStateProvider:providerCopy];
    }
  }

  return v6;
}

- (_LSApplicationState)initWithBundleIdentifier:(id)identifier stateFlags:(unint64_t)flags ratingRank:(int)rank installType:(unint64_t)type
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = _LSApplicationState;
  v11 = [(_LSApplicationState *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v11->_stateFlags = flags;
    v11->_ratingRank = rank;
    v11->_installType = type;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeInteger:self->_stateFlags forKey:@"_LSAppStateFlags"];
  [coderCopy encodeInt:self->_ratingRank forKey:@"ratingRank"];
  [coderCopy encodeInteger:self->_installType forKey:@"installType"];
}

- (_LSApplicationState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"_LSAppStateFlags"];
  v7 = [coderCopy decodeIntForKey:@"ratingRank"];
  v8 = [coderCopy decodeIntegerForKey:@"installType"];
  if (v5)
  {
    v9 = [(_LSApplicationState *)self initWithBundleIdentifier:v5 stateFlags:v6 ratingRank:v7 installType:v8];
  }

  else
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, 0, "[_LSApplicationState initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationState.m", 182);
    [coderCopy failWithError:v10];

    v9 = 0;
  }

  return v9;
}

- (uint64_t)_isRestrictedByRatingRankWithStateProvider:(uint64_t)provider
{
  v3 = a2;
  if (provider)
  {
    bundleIdentifier = [provider bundleIdentifier];
    v5 = *(provider + 24);
    maximumRating = [v3 maximumRating];
    intValue = [maximumRating intValue];

    if (v5 <= intValue)
    {
      provider = 0;
    }

    else if (bundleIdentifier)
    {
      ratingRankExceptionBundleIDs = [v3 ratingRankExceptionBundleIDs];
      provider = [ratingRankExceptionBundleIDs containsObject:bundleIdentifier] ^ 1;
    }

    else
    {
      provider = 1;
    }
  }

  return provider;
}

@end