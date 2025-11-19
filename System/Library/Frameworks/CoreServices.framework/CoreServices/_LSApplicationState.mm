@interface _LSApplicationState
- (BOOL)isRestricted;
- (_LSApplicationState)initWithBundleIdentifier:(id)a3 stateFlags:(unint64_t)a4 ratingRank:(int)a5 installType:(unint64_t)a6;
- (_LSApplicationState)initWithCoder:(id)a3;
- (id)description;
- (uint64_t)_isRestrictedByRatingRankWithStateProvider:(uint64_t)a1;
- (unint64_t)restrictionReason;
- (unint64_t)restrictionReasonWithStateProvider:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSApplicationState

- (BOOL)isRestricted
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  v4 = [(LSApplicationRestrictionsManager *)v3 defaultStateProvider];
  LOBYTE(self) = [(_LSApplicationState *)self isRestrictedWithStateProvider:v4];

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

  v10 = [(_LSApplicationState *)self isRestricted];
  v11 = @"(restricted)";
  if (!v10)
  {
    v11 = &stru_1EEF65710;
  }

  return [v3 stringWithFormat:@"%@ <%@%@%@ %@%@%@>", bundleIdentifier, v5, v6, v7, v8, v9, v11];
}

- (unint64_t)restrictionReason
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  v4 = [(LSApplicationRestrictionsManager *)v3 defaultStateProvider];
  v5 = [(_LSApplicationState *)self restrictionReasonWithStateProvider:v4];

  return v5;
}

- (unint64_t)restrictionReasonWithStateProvider:(id)a3
{
  v4 = a3;
  if ([(_LSApplicationState *)self isPlaceholder]&& (self->_stateFlags & 0x20) != 0)
  {
    v6 = 5;
  }

  else
  {
    v5 = +[LSApplicationRestrictionsManager sharedInstance];
    v6 = [(LSApplicationRestrictionsManager *)v5 reasonForApplicationRestriction:self->_stateFlags checkFlags:v4 stateProvider:?];

    if (!v6)
    {
      v6 = [(_LSApplicationState *)self _isRestrictedByRatingRankWithStateProvider:v4];
    }
  }

  return v6;
}

- (_LSApplicationState)initWithBundleIdentifier:(id)a3 stateFlags:(unint64_t)a4 ratingRank:(int)a5 installType:(unint64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = _LSApplicationState;
  v11 = [(_LSApplicationState *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v11->_stateFlags = a4;
    v11->_ratingRank = a5;
    v11->_installType = a6;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeInteger:self->_stateFlags forKey:@"_LSAppStateFlags"];
  [v5 encodeInt:self->_ratingRank forKey:@"ratingRank"];
  [v5 encodeInteger:self->_installType forKey:@"installType"];
}

- (_LSApplicationState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"_LSAppStateFlags"];
  v7 = [v4 decodeIntForKey:@"ratingRank"];
  v8 = [v4 decodeIntegerForKey:@"installType"];
  if (v5)
  {
    v9 = [(_LSApplicationState *)self initWithBundleIdentifier:v5 stateFlags:v6 ratingRank:v7 installType:v8];
  }

  else
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, 0, "[_LSApplicationState initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationState.m", 182);
    [v4 failWithError:v10];

    v9 = 0;
  }

  return v9;
}

- (uint64_t)_isRestrictedByRatingRankWithStateProvider:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 bundleIdentifier];
    v5 = *(a1 + 24);
    v6 = [v3 maximumRating];
    v7 = [v6 intValue];

    if (v5 <= v7)
    {
      a1 = 0;
    }

    else if (v4)
    {
      v8 = [v3 ratingRankExceptionBundleIDs];
      a1 = [v8 containsObject:v4] ^ 1;
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

@end