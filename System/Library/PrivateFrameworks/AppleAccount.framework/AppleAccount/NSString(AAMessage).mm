@interface NSString(AAMessage)
+ (id)aa_handleForIDSDestination:()AAMessage;
- (id)_phoneNumberDetector;
- (uint64_t)aa_appearsToBeEmail;
- (uint64_t)aa_appearsToBePhoneNumber;
@end

@implementation NSString(AAMessage)

- (uint64_t)aa_appearsToBeEmail
{
  result = [self length];
  if (result)
  {

    return [self _appearsToBeEmail];
  }

  return result;
}

- (id)_phoneNumberDetector
{
  if (_phoneNumberDetector_onceToken != -1)
  {
    [NSString(AAMessage) _phoneNumberDetector];
  }

  v1 = _phoneNumberDetector;

  return v1;
}

- (uint64_t)aa_appearsToBePhoneNumber
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [self length];
  if (v2)
  {
    _phoneNumberDetector = [self _phoneNumberDetector];
    v4 = [_phoneNumberDetector matchesInString:self options:0 range:{0, v2}];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v2 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v2)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) resultType] == 2048)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }

        v2 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)aa_handleForIDSDestination:()AAMessage
{
  v0 = IDSCopyRawAddressForDestination();

  return v0;
}

@end