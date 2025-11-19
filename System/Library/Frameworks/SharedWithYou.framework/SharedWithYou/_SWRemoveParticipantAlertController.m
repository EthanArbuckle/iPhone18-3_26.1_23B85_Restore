@interface _SWRemoveParticipantAlertController
+ (id)alertControllerWithParticipant:(id)a3 highlight:(id)a4 preferredStyle:(int64_t)a5;
- (id)_initWithParticipant:(id)a3 highlight:(id)a4 preferredStyle:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation _SWRemoveParticipantAlertController

- (id)_initWithParticipant:(id)a3 highlight:(id)a4 preferredStyle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _SWRemoveParticipantAlertController;
  v11 = [(_SWRemoveParticipantAlertController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_participant, a3);
    objc_storeStrong(&v12->_highlight, a4);
    v12->_preferredStyle = a5;
  }

  return v12;
}

+ (id)alertControllerWithParticipant:(id)a3 highlight:(id)a4 preferredStyle:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[_SWRemoveParticipantAlertController alloc] _initWithParticipant:v8 highlight:v7 preferredStyle:a5];

  [v9 setModalPresentationStyle:6];

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _SWRemoveParticipantAlertController;
  [(_SWRemoveParticipantAlertController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(_SWRemoveParticipantAlertController *)self view];
  [v4 setBackgroundColor:v3];
}

@end