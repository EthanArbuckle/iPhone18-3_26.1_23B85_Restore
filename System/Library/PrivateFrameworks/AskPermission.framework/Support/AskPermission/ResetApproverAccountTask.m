@interface ResetApproverAccountTask
- (id)perform;
@end

@implementation ResetApproverAccountTask

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025DEC;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(ResetApproverAccountTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

@end