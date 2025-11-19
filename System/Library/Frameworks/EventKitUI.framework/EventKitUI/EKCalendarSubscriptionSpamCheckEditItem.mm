@interface EKCalendarSubscriptionSpamCheckEditItem
- (EKCalendarSubscriptionSpamCheckEditItemDelegate)subscriptionSpamDelegate;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)_receivedSpamCheckResult:(BOOL)a3 forURL:(id)a4;
- (void)_sendSpamCheckRequest;
- (void)_throttlePeriodEnded;
- (void)_updateUI;
- (void)setURLToCheck:(id)a3;
@end

@implementation EKCalendarSubscriptionSpamCheckEditItem

- (void)setURLToCheck:(id)a3
{
  v9 = a3;
  if (([(NSURL *)self->_currentURL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentURL, a3);
    v5 = [(NSURL *)self->_currentURL absoluteString];
    v6 = [v5 length];

    if (!v6)
    {
      v7 = self;
      v8 = 0;
      goto LABEL_6;
    }

    if (self->_inThrottlePeriod)
    {
      v7 = self;
      v8 = 2;
LABEL_6:
      [(EKCalendarSubscriptionSpamCheckEditItem *)v7 _setState:v8];
      goto LABEL_8;
    }

    [(EKCalendarSubscriptionSpamCheckEditItem *)self _setState:1];
    [(EKCalendarSubscriptionSpamCheckEditItem *)self _sendSpamCheckRequest];
  }

LABEL_8:
}

- (void)_sendSpamCheckRequest
{
  self->_inThrottlePeriod = 1;
  v3 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EKCalendarSubscriptionSpamCheckEditItem__sendSpamCheckRequest__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  v4 = MEMORY[0x1E69E96A0];
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  currentURL = self->_currentURL;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__EKCalendarSubscriptionSpamCheckEditItem__sendSpamCheckRequest__block_invoke_2;
  v6[3] = &unk_1E8441B80;
  v6[4] = self;
  [MEMORY[0x1E6993498] checkURLForSpam:currentURL completionHandler:v6 queue:v4];
}

- (void)_throttlePeriodEnded
{
  self->_inThrottlePeriod = 0;
  if (self->_state == 2)
  {
    [(EKCalendarSubscriptionSpamCheckEditItem *)self _setState:1];

    [(EKCalendarSubscriptionSpamCheckEditItem *)self _sendSpamCheckRequest];
  }
}

- (void)_receivedSpamCheckResult:(BOOL)a3 forURL:(id)a4
{
  v4 = a3;
  if ([a4 isEqual:self->_currentURL])
  {
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    [(EKCalendarSubscriptionSpamCheckEditItem *)self _setState:v6];
    v7 = [(EKCalendarSubscriptionSpamCheckEditItem *)self subscriptionSpamDelegate];
    [v7 calendarSubscriptionSpamCheckEditItem:self didDetermineThatURL:self->_currentURL isSpam:v4];
  }
}

- (void)_updateUI
{
  if (!self->_cell)
  {
    return;
  }

  state = self->_state;
  if (state == 1)
  {
    v4 = @"Checking URL…";
  }

  else
  {
    if (state != 3)
    {
      v12 = @" ";
      goto LABEL_9;
    }

    v4 = @"Warning: This calendar subscription is spam.";
  }

  v5 = EventKitUIBundle();
  v12 = [v5 localizedStringForKey:v4 value:&stru_1F4EF6790 table:0];

LABEL_9:
  v6 = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
  [v6 setText:v12];
  v7 = [v6 textProperties];
  [v7 setAlignment:1];

  if (self->_state == 3)
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [v6 textProperties];
    [v9 setColor:v8];

    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v10 = ;
  v11 = [(UITableViewCell *)self->_cell contentView];
  [v11 setBackgroundColor:v10];

  [(UITableViewCell *)self->_cell setContentConfiguration:v6];
  [(UITableViewCell *)self->_cell sizeToFit];
  [(UITableViewCell *)self->_cell setNeedsLayout];
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD028]);
    v6 = self->_cell;
    self->_cell = v5;

    v7 = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
    [v7 setText:@" "];
    [(UITableViewCell *)self->_cell setContentConfiguration:v7];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UITableViewCell *)self->_cell setBackgroundColor:v8];

    v9 = [MEMORY[0x1E69DC888] clearColor];
    v10 = [(UITableViewCell *)self->_cell contentView];
    [v10 setBackgroundColor:v9];

    [(EKCalendarSubscriptionSpamCheckEditItem *)self _updateUI];
    cell = self->_cell;
  }

  return cell;
}

- (EKCalendarSubscriptionSpamCheckEditItemDelegate)subscriptionSpamDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_subscriptionSpamDelegate);

  return WeakRetained;
}

@end