void sub_100001034(id a1)
{
  v1 = +[IMDaemonController sharedController];
  [v1 addListenerID:@"MessagesAssistantUIExtension" capabilities:kFZListenerCapTruncatedChatRegistry | CKListenerCapabilities()];

  v2 = +[IMDaemonController sharedController];
  [v2 blockUntilConnected];

  v3 = +[IMDaemonController sharedController];
  [v3 _setBlocksConnectionAtResume:1];
}