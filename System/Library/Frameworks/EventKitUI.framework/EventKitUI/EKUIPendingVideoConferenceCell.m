@interface EKUIPendingVideoConferenceCell
- (EKUIPendingVideoConferenceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EKUIPendingVideoConferenceCell

- (EKUIPendingVideoConferenceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = EKUIPendingVideoConferenceCell;
  v4 = [(EKUILocationEditItemCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Pending Video Call" value:&stru_1F4EF6790 table:0];
    [(UILabel *)v4->super._title setText:v6];

    [(UIActivityIndicatorView *)v4->super._spinner setHidden:0];
    [(UIImageView *)v4->super._image setHidden:1];
    [(UIActivityIndicatorView *)v4->super._spinner startAnimating];
  }

  return v4;
}

@end