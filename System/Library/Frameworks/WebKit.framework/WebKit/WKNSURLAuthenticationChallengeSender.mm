@interface WKNSURLAuthenticationChallengeSender
- (void)cancelAuthenticationChallenge:(id)challenge;
- (void)continueWithoutCredentialForAuthenticationChallenge:(id)challenge;
- (void)performDefaultHandlingForAuthenticationChallenge:(id)challenge;
- (void)rejectProtectionSpaceAndContinueWithChallenge:(id)challenge;
- (void)useCredential:(id)credential forAuthenticationChallenge:(id)challenge;
@end

@implementation WKNSURLAuthenticationChallengeSender

- (void)cancelAuthenticationChallenge:(id)challenge
{
  checkChallenge(challenge);
  _web_authenticationChallengeProxy = [challenge _web_authenticationChallengeProxy];
  CFRetain(*(_web_authenticationChallengeProxy + 8));
  v5 = *(_web_authenticationChallengeProxy + 472);
  WebCore::CredentialBase::CredentialBase(&v10);
  v12 = 0;
  WebKit::AuthenticationDecisionListener::completeChallenge(v5);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v10;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  CFRelease(*(_web_authenticationChallengeProxy + 8));
}

- (void)continueWithoutCredentialForAuthenticationChallenge:(id)challenge
{
  checkChallenge(challenge);
  _web_authenticationChallengeProxy = [challenge _web_authenticationChallengeProxy];
  CFRetain(*(_web_authenticationChallengeProxy + 8));
  v5 = *(_web_authenticationChallengeProxy + 472);
  WebCore::CredentialBase::CredentialBase(&v10);
  v12 = 0;
  WebKit::AuthenticationDecisionListener::completeChallenge(v5);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v10;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  CFRelease(*(_web_authenticationChallengeProxy + 8));
}

- (void)useCredential:(id)credential forAuthenticationChallenge:(id)challenge
{
  checkChallenge(challenge);
  _web_authenticationChallengeProxy = [challenge _web_authenticationChallengeProxy];
  CFRetain(*(_web_authenticationChallengeProxy + 8));
  v7 = *(_web_authenticationChallengeProxy + 472);
  MEMORY[0x19EB02B50](&v12, credential);
  WebKit::AuthenticationDecisionListener::completeChallenge(v7);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v12;
  v12 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  CFRelease(*(_web_authenticationChallengeProxy + 8));
}

- (void)performDefaultHandlingForAuthenticationChallenge:(id)challenge
{
  checkChallenge(challenge);
  _web_authenticationChallengeProxy = [challenge _web_authenticationChallengeProxy];
  CFRetain(*(_web_authenticationChallengeProxy + 8));
  v5 = *(_web_authenticationChallengeProxy + 472);
  WebCore::CredentialBase::CredentialBase(&v10);
  v12 = 0;
  WebKit::AuthenticationDecisionListener::completeChallenge(v5);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v10;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  CFRelease(*(_web_authenticationChallengeProxy + 8));
}

- (void)rejectProtectionSpaceAndContinueWithChallenge:(id)challenge
{
  checkChallenge(challenge);
  _web_authenticationChallengeProxy = [challenge _web_authenticationChallengeProxy];
  CFRetain(*(_web_authenticationChallengeProxy + 8));
  v5 = *(_web_authenticationChallengeProxy + 472);
  WebCore::CredentialBase::CredentialBase(&v10);
  v12 = 0;
  WebKit::AuthenticationDecisionListener::completeChallenge(v5);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v10;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  CFRelease(*(_web_authenticationChallengeProxy + 8));
}

@end