@interface AMSBagValue
- (id)_errorForAirplaneMode;
- (id)jsa_valueWithError:(id *)error;
- (void)jsa_valueWithCompletion:(id)completion;
@end

@implementation AMSBagValue

- (void)jsa_valueWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[AMSBagValue isLoaded](self, "isLoaded") || (+[JSANetwork sharedInstance](JSANetwork, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isReachable], v4, (v5 & 1) != 0))
  {
    [(AMSBagValue *)self valueWithCompletion:completionCopy];
  }

  else
  {
    _errorForAirplaneMode = [(AMSBagValue *)self _errorForAirplaneMode];
    v7 = objc_retainBlock(completionCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0, _errorForAirplaneMode);
    }
  }
}

- (id)jsa_valueWithError:(id *)error
{
  if (-[AMSBagValue isLoaded](self, "isLoaded") || (+[JSANetwork sharedInstance](JSANetwork, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isReachable], v5, (v6 & 1) != 0))
  {
    v7 = [(AMSBagValue *)self valueWithError:error];
  }

  else if (error)
  {
    _errorForAirplaneMode = [(AMSBagValue *)self _errorForAirplaneMode];
    v10 = _errorForAirplaneMode;
    v7 = 0;
    *error = _errorForAirplaneMode;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_errorForAirplaneMode
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(AMSBagValue *)self performSelector:"key"];
  }

  else
  {
    v3 = @"(unknown key)";
  }

  v4 = [NSString stringWithFormat:@"Failed to load bag value for %@ given there's no cache and device is offline", v3];
  v5 = [NSError bu_errorWithDomain:@"JSAErrorDomain" code:110 alertTitle:@"Attempted to load bag with no network" alertMessage:v4];

  return v5;
}

@end