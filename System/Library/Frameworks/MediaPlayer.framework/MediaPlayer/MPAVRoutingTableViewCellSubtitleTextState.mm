@interface MPAVRoutingTableViewCellSubtitleTextState
- (BOOL)hasVisibleTextTypeToShow;
- (NSString)stringForCurrentVisibleTextType;
- (id)_stringForVisibleTextType:(unint64_t)a3;
- (unint64_t)_nextAvailableVisibleTextType;
@end

@implementation MPAVRoutingTableViewCellSubtitleTextState

- (unint64_t)_nextAvailableVisibleTextType
{
  currentVisibleTextType = self->_currentVisibleTextType;
  LOBYTE(v4) = currentVisibleTextType;
  while (1)
  {
    v5 = v4 + 1;
    v4 = (v4 + 1) & 3;
    if (v4 == currentVisibleTextType)
    {
      break;
    }

    v6 = [(MPAVRoutingTableViewCellSubtitleTextState *)self _stringForVisibleTextType:v5 & 3];

    if (v6)
    {
      return v4;
    }
  }

  return currentVisibleTextType;
}

- (id)_stringForVisibleTextType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&self->_routeUID + a3);
  }

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)stringForCurrentVisibleTextType
{
  v2 = [(MPAVRoutingTableViewCellSubtitleTextState *)self _stringForVisibleTextType:self->_currentVisibleTextType];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)hasVisibleTextTypeToShow
{
  v3 = -1;
  while (v3 != 3)
  {
    v4 = [(MPAVRoutingTableViewCellSubtitleTextState *)self _stringForVisibleTextType:++v3];

    if (v4)
    {
      return v3 < 4;
    }
  }

  v3 = 4;
  return v3 < 4;
}

@end