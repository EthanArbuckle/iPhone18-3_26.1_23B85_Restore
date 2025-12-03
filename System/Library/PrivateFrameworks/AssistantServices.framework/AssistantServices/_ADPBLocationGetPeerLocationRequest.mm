@interface _ADPBLocationGetPeerLocationRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_ad_performWithPeerLocationManagerRemote:(id)remote completion:(id)completion;
@end

@implementation _ADPBLocationGetPeerLocationRequest

- (void)_ad_performWithPeerLocationManagerRemote:(id)remote completion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[_ADPBLocationGetPeerLocationRequest(ADPeerLocationRemote) _ad_performWithPeerLocationManagerRemote:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  [remoteCopy _getBestLocationWithCompletion:completionCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)readFrom:(id)from
{
  while (1)
  {
    position = [from position];
    if (position >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v14 = 0;
      v8 = [from position] + 1;
      if (v8 >= [from position] && (v9 = objc_msgSend(from, "position") + 1, v9 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v14 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v7 |= (v14 & 0x7F) << v5;
      if ((v14 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [from hasError] ? 0 : v7;
LABEL_15:
    if (([from hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [from hasError] ^ 1;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBLocationGetPeerLocationRequest;
  v3 = [(_ADPBLocationGetPeerLocationRequest *)&v7 description];
  dictionaryRepresentation = [(_ADPBLocationGetPeerLocationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end