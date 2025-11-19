BOOL sub_100001074(id a1, id a2)
{
  v2 = a2;
  v7 = 0;
  v3 = [v2 dk_numberFromRequiredKey:@"xPos" lowerBound:&off_1000087F0 upperBound:&off_1000087E0 failed:&v7];
  v4 = [v2 dk_numberFromRequiredKey:@"yPos" lowerBound:&off_1000087F0 upperBound:&off_1000087E0 failed:&v7];
  v5 = v7;

  return (v5 & 1) == 0;
}

void sub_1000016E8(uint64_t a1)
{
  v3 = [*(a1 + 32) inputs];
  [v3 noInputTimeout];
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [*(a1 + 32) setTimeoutTimer:v2];
}

void sub_1000023F4(uint64_t a1)
{
  v2 = [*(a1 + 32) targetView];
  v1 = [UIColor colorWithHexValue:@"007AFF" error:0];
  [v2 setBackgroundColor:v1];
}