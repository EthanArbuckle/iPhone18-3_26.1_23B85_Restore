@interface ChannelLinkActionImplementation
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation ChannelLinkActionImplementation

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_87770();
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_CACC(0, &qword_19E038);
  v6 = sub_13BB04();
  v7 = a3;
  v8 = self;
  sub_87A30(v7, v6);
}

@end