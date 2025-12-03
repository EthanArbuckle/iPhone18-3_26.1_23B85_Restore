@interface MPMediaItemCollection
- (BOOL)_hasBeenPlayed:(id)played;
- (BOOL)bk_cloudHasBeenPlayed;
- (BOOL)bk_localHasBeenPlayed;
- (double)_bookmarkTime:(id)time timestamp:(id *)timestamp;
- (double)_duration:(id)_duration;
- (double)_timeRemaining:(id)remaining;
- (double)bk_cloudBookmarkTime;
- (double)bk_cloudDuration;
- (double)bk_cloudTimeRemaining;
- (double)bk_localBookmarkTime;
- (double)bk_localDuration;
- (double)bk_localTimeRemaining;
- (id)bk_cloudBookmarkTimestamp;
- (id)bk_cloudItems;
- (id)bk_cloudRepresentativeItem;
- (id)bk_items;
- (id)bk_localBookmarkTimestamp;
- (id)bk_localItems;
- (id)bk_localRepresentativeItem;
- (id)bk_mostRecentListeningProgress;
- (id)bk_representativeItem;
@end

@implementation MPMediaItemCollection

- (id)bk_cloudRepresentativeItem
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [(MPMediaItemCollection *)self items];
  v3 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = MPMediaItemPropertyPurchaseHistoryID;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(items);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 valueForProperty:v6];
        if ([v8 mediaType] == &dword_4 && objc_msgSend(v9, "longLongValue"))
        {
          v10 = v8;

          goto LABEL_12;
        }
      }

      v4 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)bk_localRepresentativeItem
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [(MPMediaItemCollection *)self items];
  v3 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = MPMediaItemPropertyPurchaseHistoryID;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(items);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 valueForProperty:v6];
        if ([v8 mediaType] == &dword_4 && !objc_msgSend(v9, "longLongValue"))
        {
          v10 = v8;

          goto LABEL_12;
        }
      }

      v4 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)bk_representativeItem
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  items = [(MPMediaItemCollection *)self items];
  v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(items);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 mediaType] == &dword_4)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)bk_items
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [(MPMediaItemCollection *)self items];
  v5 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 mediaType] == &dword_4)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)bk_localItems
{
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [(MPMediaItemCollection *)self items];
  v5 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MPMediaItemPropertyPurchaseHistoryID;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v8];
        if ([v10 mediaType] == &dword_4 && !objc_msgSend(v11, "longLongValue"))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)bk_cloudItems
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [(MPMediaItemCollection *)self items];
  v5 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = MPMediaItemPropertyPurchaseHistoryID;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v8];
        if ([v10 mediaType] == &dword_4 && objc_msgSend(v11, "longLongValue"))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([v3 count] >= 2)
  {
    v12 = BKAudiobooksLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_21920(v3, v12);
    }
  }

  v13 = [v3 copy];

  return v13;
}

- (id)bk_mostRecentListeningProgress
{
  bk_localItems = [(MPMediaItemCollection *)self bk_localItems];
  bk_cloudItems = [(MPMediaItemCollection *)self bk_cloudItems];
  v22 = 0;
  [(MPMediaItemCollection *)self _bookmarkTime:bk_localItems timestamp:&v22];
  v6 = v5;
  v7 = v22;
  v21 = 0;
  [(MPMediaItemCollection *)self _bookmarkTime:bk_cloudItems timestamp:&v21];
  v9 = v8;
  v10 = v21;
  v11 = v10;
  if (v7)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if ([v7 compare:v10] != -1)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!v7 && v10)
  {
LABEL_12:
    [(MPMediaItemCollection *)self _duration:bk_cloudItems];
    if (v15 > 0.0)
    {
      v14 = v9 / v15;
      goto LABEL_14;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  [(MPMediaItemCollection *)self _duration:bk_localItems];
  if (v13 <= 0.0)
  {
    goto LABEL_18;
  }

  v14 = v6 / v13;
LABEL_14:
  v16 = [NSNumber numberWithDouble:v14];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_18;
  }

  [v16 doubleValue];
  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  v19 = [NSNumber numberWithDouble:fmax(v18, 0.0)];

LABEL_19:

  return v19;
}

- (double)_bookmarkTime:(id)time timestamp:(id *)timestamp
{
  timeCopy = time;
  if ([timeCopy count] == &dword_0 + 1)
  {
    firstObject = [timeCopy firstObject];
    v7 = [firstObject valueForProperty:MPMediaItemPropertyBookmarkTime];
    [v7 doubleValue];
    v9 = v8;

    if (![firstObject hasBeenPlayed] || (objc_msgSend(firstObject, "dateAccessed"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      objc_opt_class();
      v11 = [firstObject valueForProperty:MPMediaItemPropertyLastPlayedDate];
      v10 = BUDynamicCast();
    }

    if (!timestamp)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ([timeCopy count] < 2)
  {
    v10 = 0;
    v9 = 0.0;
    if (!timestamp)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v30 = timeCopy;
  timestampCopy = timestamp;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = timeCopy;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v10 = 0;
    v33 = *v35;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        dateAccessed = [v18 dateAccessed];
        hasBeenPlayed = [v18 hasBeenPlayed];
        v21 = [v18 valueForProperty:MPMediaItemPropertyPlaybackDuration];
        [v21 doubleValue];
        v23 = v22;

        v24 = [v18 valueForProperty:MPMediaItemPropertyBookmarkTime];
        [v24 doubleValue];
        v26 = v25;

        if (v26 > v23)
        {
          v26 = 0.0;
        }

        if (hasBeenPlayed)
        {
          if (!v10 || [dateAccessed compare:v10] == &dword_0 + 1)
          {
            v27 = dateAccessed;

            v10 = v27;
          }

          v15 = v16 + v26;
        }

        v14 |= hasBeenPlayed;
        v16 = v16 + v23;
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v10 = 0;
    v15 = 0.0;
  }

  if ((v10 != 0) | v14 & 1)
  {
    v9 = v15;
  }

  else
  {
    v10 = 0;
    v9 = 0.0;
  }

  timeCopy = v30;
  timestamp = timestampCopy;
  if (timestampCopy)
  {
LABEL_30:
    v28 = v10;
    *timestamp = v10;
  }

LABEL_31:

  return v9;
}

- (double)bk_localBookmarkTime
{
  bk_localItems = [(MPMediaItemCollection *)self bk_localItems];
  [(MPMediaItemCollection *)self _bookmarkTime:bk_localItems timestamp:0];
  v5 = v4;

  return v5;
}

- (double)bk_cloudBookmarkTime
{
  bk_cloudItems = [(MPMediaItemCollection *)self bk_cloudItems];
  [(MPMediaItemCollection *)self _bookmarkTime:bk_cloudItems timestamp:0];
  v5 = v4;

  return v5;
}

- (id)bk_localBookmarkTimestamp
{
  bk_localItems = [(MPMediaItemCollection *)self bk_localItems];
  v7 = 0;
  [(MPMediaItemCollection *)self _bookmarkTime:bk_localItems timestamp:&v7];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (id)bk_cloudBookmarkTimestamp
{
  bk_cloudItems = [(MPMediaItemCollection *)self bk_cloudItems];
  v7 = 0;
  [(MPMediaItemCollection *)self _bookmarkTime:bk_cloudItems timestamp:&v7];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (double)_duration:(id)_duration
{
  _durationCopy = _duration;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [_durationCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(_durationCopy);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) valueForProperty:MPMediaItemPropertyPlaybackDuration];
        [v9 doubleValue];
        v11 = v10;

        v7 = v7 + v11;
      }

      v5 = [_durationCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)bk_localDuration
{
  bk_localItems = [(MPMediaItemCollection *)self bk_localItems];
  [(MPMediaItemCollection *)self _duration:bk_localItems];
  v5 = v4;

  return v5;
}

- (double)bk_cloudDuration
{
  bk_cloudItems = [(MPMediaItemCollection *)self bk_cloudItems];
  [(MPMediaItemCollection *)self _duration:bk_cloudItems];
  v5 = v4;

  return v5;
}

- (double)_timeRemaining:(id)remaining
{
  remainingCopy = remaining;
  [(MPMediaItemCollection *)self _duration:remainingCopy];
  v6 = v5;
  [(MPMediaItemCollection *)self _bookmarkTime:remainingCopy timestamp:0];
  v8 = v7;

  return v6 - v8;
}

- (double)bk_localTimeRemaining
{
  bk_localItems = [(MPMediaItemCollection *)self bk_localItems];
  [(MPMediaItemCollection *)self _timeRemaining:bk_localItems];
  v5 = v4;

  return v5;
}

- (double)bk_cloudTimeRemaining
{
  bk_cloudItems = [(MPMediaItemCollection *)self bk_cloudItems];
  [(MPMediaItemCollection *)self _timeRemaining:bk_cloudItems];
  v5 = v4;

  return v5;
}

- (BOOL)_hasBeenPlayed:(id)played
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  playedCopy = played;
  v4 = [playedCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(playedCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasBeenPlayed])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [playedCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)bk_localHasBeenPlayed
{
  selfCopy = self;
  bk_localItems = [(MPMediaItemCollection *)self bk_localItems];
  LOBYTE(selfCopy) = [(MPMediaItemCollection *)selfCopy _hasBeenPlayed:bk_localItems];

  return selfCopy;
}

- (BOOL)bk_cloudHasBeenPlayed
{
  selfCopy = self;
  bk_cloudItems = [(MPMediaItemCollection *)self bk_cloudItems];
  LOBYTE(selfCopy) = [(MPMediaItemCollection *)selfCopy _hasBeenPlayed:bk_cloudItems];

  return selfCopy;
}

@end