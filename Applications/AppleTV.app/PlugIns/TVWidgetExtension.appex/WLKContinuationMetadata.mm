@interface WLKContinuationMetadata
- (id)tvun_channelImageURLString:(BOOL *)string;
- (id)tvun_punchoutURL:(BOOL)l;
@end

@implementation WLKContinuationMetadata

- (id)tvun_channelImageURLString:(BOOL *)string
{
  playable = [(WLKContinuationMetadata *)self playable];
  channelDetails = [playable channelDetails];

  images = [channelDetails images];
  v7 = [images artworkVariantOfType:10];

  images2 = [channelDetails images];
  v9 = [images2 artworkVariantOfType:18];

  if ([channelDetails isApSubscription] && v9)
  {
    artworkURLString = [v9 artworkURLString];
    if (!string)
    {
      goto LABEL_10;
    }

    v11 = 1;
LABEL_8:
    *string = v11;
    goto LABEL_10;
  }

  if (v7)
  {
    artworkURLString = [v7 artworkURLString];
    if (!string)
    {
      goto LABEL_10;
    }

    v11 = 0;
    goto LABEL_8;
  }

  artworkURLString = 0;
LABEL_10:

  return artworkURLString;
}

- (id)tvun_punchoutURL:(BOOL)l
{
  lCopy = l;
  playable = [(WLKContinuationMetadata *)self playable];
  playPunchoutURL = [playable playPunchoutURL];
  playable2 = [(WLKContinuationMetadata *)self playable];
  channelDetails = [playable2 channelDetails];

  if ([playable isiTunes])
  {
    v9 = 0;
  }

  else
  {
    v9 = [channelDetails isApSubscription] ^ 1;
  }

  tvAppDeeplinkURL = [playable tvAppDeeplinkURL];
  v11 = tvAppDeeplinkURL;
  if (!tvAppDeeplinkURL || (v9 & 1) != 0)
  {
  }

  else
  {
    isEntitled = [playable isEntitled];

    if (isEntitled)
    {
      tvAppDeeplinkURL2 = [playable tvAppDeeplinkURL];
      v14 = [WLKPlayableUtilities _punchoutURLForDirectPlayback:tvAppDeeplinkURL2 ignoreExtras:1];

      goto LABEL_16;
    }
  }

  if (lCopy && [playable isEntitled] && objc_msgSend(playable, "isAppInstalled") && objc_msgSend(playPunchoutURL, "length"))
  {
    contentTVAppDeeplinkURL = [NSURL URLWithString:playPunchoutURL];
  }

  else
  {
    contentTVAppDeeplinkURL = [(WLKContinuationMetadata *)self contentTVAppDeeplinkURL];
  }

  v14 = contentTVAppDeeplinkURL;
LABEL_16:

  return v14;
}

@end