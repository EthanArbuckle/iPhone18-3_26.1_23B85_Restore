@interface MFMailSignatureController
- (BOOL)hasCustomSigntureForSender:(id)sender;
- (BOOL)isDefaultSignatureForSender:(id)sender;
- (id)_getSignatureStringForSender:(id)sender;
- (id)_signatureStringForSender:(id)sender;
- (void)addSignatureForSender:(id)sender bodyField:(id)field prepend:(BOOL)prepend;
- (void)finalizeSignatureForBodyField:(id)field completionHandler:(id)handler;
- (void)removeSignatureForSender:(id)sender bodyField:(id)field;
- (void)updateSignatureForSender:(id)sender bodyField:(id)field;
@end

@implementation MFMailSignatureController

- (id)_signatureStringForSender:(id)sender
{
  senderCopy = sender;
  if (MFIsMobileMail())
  {
    mEMORY[0x1E69B1698] = [MEMORY[0x1E69B1698] sharedInstance];
    v5 = [mEMORY[0x1E69B1698] signatureForSendingEmailAddress:senderCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E69ADAC0] customSignatureForSendingEmailAddress:senderCopy];
  }

  return v5;
}

- (BOOL)isDefaultSignatureForSender:(id)sender
{
  senderCopy = sender;
  mEMORY[0x1E69B1698] = [MEMORY[0x1E69B1698] sharedInstance];
  defaultSignature = [mEMORY[0x1E69B1698] defaultSignature];

  v7 = [(MFMailSignatureController *)self _signatureStringForSender:senderCopy];
  LOBYTE(mEMORY[0x1E69B1698]) = [v7 isEqualToString:defaultSignature];

  return mEMORY[0x1E69B1698];
}

- (void)addSignatureForSender:(id)sender bodyField:(id)field prepend:(BOOL)prepend
{
  prependCopy = prepend;
  senderCopy = sender;
  signatureControllerProxy = [field signatureControllerProxy];
  v9 = [(MFMailSignatureController *)self _getSignatureStringForSender:senderCopy];
  [signatureControllerProxy addSignature:v9 prepend:prependCopy];
}

- (void)removeSignatureForSender:(id)sender bodyField:(id)field
{
  signatureControllerProxy = [field signatureControllerProxy];
  [signatureControllerProxy removeSignature];
}

- (void)updateSignatureForSender:(id)sender bodyField:(id)field
{
  senderCopy = sender;
  signatureControllerProxy = [field signatureControllerProxy];
  v7 = [(MFMailSignatureController *)self _getSignatureStringForSender:senderCopy];
  [signatureControllerProxy updateSignature:v7];
}

- (void)finalizeSignatureForBodyField:(id)field completionHandler:(id)handler
{
  handlerCopy = handler;
  signatureControllerProxy = [field signatureControllerProxy];
  [signatureControllerProxy finalizeSignature:handlerCopy];
}

- (id)_getSignatureStringForSender:(id)sender
{
  v3 = [(MFMailSignatureController *)self _signatureStringForSender:sender];
  v4 = [MEMORY[0x1E696AEC0] ef_emptyStringIfNil:v3];

  return v4;
}

- (BOOL)hasCustomSigntureForSender:(id)sender
{
  v3 = [(MFMailSignatureController *)self _signatureStringForSender:sender];
  if (v3)
  {
    mEMORY[0x1E69B1698] = [MEMORY[0x1E69B1698] sharedInstance];
    defaultSignature = [mEMORY[0x1E69B1698] defaultSignature];

    v6 = [v3 isEqualToString:defaultSignature] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end