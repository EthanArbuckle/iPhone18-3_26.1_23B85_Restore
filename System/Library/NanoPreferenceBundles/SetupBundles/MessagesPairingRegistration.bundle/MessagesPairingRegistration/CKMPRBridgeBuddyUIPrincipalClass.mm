@interface CKMPRBridgeBuddyUIPrincipalClass
- (CKMPRBridgeBuddyUIPrincipalClass)init;
- (void)miniFlowStepComplete:(id)complete;
@end

@implementation CKMPRBridgeBuddyUIPrincipalClass

- (CKMPRBridgeBuddyUIPrincipalClass)init
{
  v6.receiver = self;
  v6.super_class = CKMPRBridgeBuddyUIPrincipalClass;
  v2 = [(CKMPRBridgeBuddyUIPrincipalClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CKMPRiMessageConsentViewController);
    [(CKMPRBridgeBuddyUIPrincipalClass *)v2 setIMessageConsentViewController:v3];

    iMessageConsentViewController = [(CKMPRBridgeBuddyUIPrincipalClass *)v2 iMessageConsentViewController];
    [iMessageConsentViewController setMiniFlowDelegate:v2];
  }

  return v2;
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(CKMPRBridgeBuddyUIPrincipalClass *)self delegate];
  [delegate buddyControllerDone:self];
}

@end