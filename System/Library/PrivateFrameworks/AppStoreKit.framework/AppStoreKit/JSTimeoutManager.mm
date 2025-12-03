@interface JSTimeoutManager
- (id)makePromise:(id)promise :(id)a4;
- (void)setTimeout:(id)timeout :(id)a4;
@end

@implementation JSTimeoutManager

- (id)makePromise:(id)promise :(id)a4
{
  sub_1E1AF5DFC();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v6 = a4;
  selfCopy = self;
  v8 = sub_1E1AF6D4C();
  v9 = sub_1E1AF6D5C();

  return v9;
}

- (void)setTimeout:(id)timeout :(id)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  timeoutCopy = timeout;
  selfCopy = self;
  sub_1E17C60E0(timeoutCopy, v6, v8);
}

@end