void sub_100000EDC(id a1)
{
  qword_100008B10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NSObject];

  _objc_release_x1();
}

void sub_100000F68(id a1)
{
  qword_100008B20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SLConversationExtensionHostProtocol];

  _objc_release_x1();
}

void sub_100001144(id a1)
{
  v1 = +[IMDaemonController sharedController];
  [v1 addListenerID:@"com.apple.MobileSMS.MessagesTranscriptExtension" capabilities:kFZListenerCapNotifications | kFZListenerCapManageStatus | kFZListenerCapChats | kFZListenerCapFileTransfers | kFZListenerCapIDQueries | kFZListenerCapOnDemandChatRegistry | kFZListenerCapMessageHistory | (kFZListenerCapModifyReadState | kFZListenerCapSendMessages)];

  v2 = +[IMDaemonController sharedController];
  [v2 blockUntilConnected];

  v3 = +[IMDaemonController sharedController];
  [v3 _setBlocksConnectionAtResume:1];
}