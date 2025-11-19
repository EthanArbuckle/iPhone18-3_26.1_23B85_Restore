@interface EKEventDetailLocationItem
+ (BOOL)isValidLocation:(id)a3 event:(id)a4;
- (EKEventDetailLocationItem)initWithLocationName:(id)a3 forEvent:(id)a4;
- (id)locationView;
- (void)_locationTapped;
- (void)textViewDidChangeSelection:(id)a3;
- (void)updateAttributedString;
- (void)updateLocation:(id)a3 forEvent:(id)a4;
@end

@implementation EKEventDetailLocationItem

- (EKEventDetailLocationItem)initWithLocationName:(id)a3 forEvent:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = EKEventDetailLocationItem;
  v8 = [(EKEventDetailLocationItem *)&v24 init];
  if (v8)
  {
    if ([v7 hasAttendees])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v7 attendees];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if ([v14 participantType] == 2)
            {
              v15 = [v14 name];
              v16 = [v15 isEqualToString:v6];

              if (v16)
              {
                v8->_locationIsAttendee = 1;
                v8->_locationStatus = [v14 participantStatus];
                v17 = [v14 comment];
                locationComment = v8->_locationComment;
                v8->_locationComment = v17;

                goto LABEL_14;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    [(EKEventDetailLocationItem *)v8 updateLocation:v6 forEvent:v7];
  }

  return v8;
}

+ (BOOL)isValidLocation:(id)a3 event:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 hasAttendees])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 attendees];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if ([v12 participantType] == 2)
          {
            v13 = [v12 name];
            v14 = [v13 isEqualToString:v5];

            if (v14)
            {
              v15 = [v12 comment];
              if ([v15 length])
              {
              }

              else
              {
                v16 = [v6 virtualConference];
                v17 = [v16 serializationBlockTitle];
                v18 = [v17 isEqualToString:v5];

                if (v18)
                {
                  v19 = 0;
                  goto LABEL_17;
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_17:
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (void)updateAttributedString
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = CalendarAppTintColor();
  if (self->_locationIsAttendee || !self->_locationURL)
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];

    v3 = v4;
  }

  v5 = [objc_opt_class() _locationFont];
  v6 = objc_opt_new();
  [v6 setLineSpacing:-0.5];
  v7 = *MEMORY[0x1E69DB648];
  v23[0] = *MEMORY[0x1E69DB650];
  v23[1] = v7;
  v24[0] = v3;
  v24[1] = v5;
  v23[2] = *MEMORY[0x1E69DB688];
  v24[2] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_locationTitle attributes:v8];
  if (self->_locationIsAttendee)
  {
    v10 = attributedStatusGlyph();
    v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v10];
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v11 appendAttributedString:v12];
    [v11 appendAttributedString:v9];
    if ([(NSString *)self->_locationComment length])
    {
      [MEMORY[0x1E6993478] sharedInstance];
      v13 = v22 = v12;
      v19 = [v13 commentIconStringForFont:v5];

      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v11 appendAttributedString:v20];
      [v11 appendAttributedString:v19];
      [v11 appendAttributedString:v22];
      v14 = EventKitUIBundle();
      [v14 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];
      v15 = v21 = v5;

      v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v15, self->_locationComment];
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v8];
      [v11 appendAttributedString:v17];

      v12 = v22;
      v5 = v21;
    }

    v18 = [(EKEventDetailLocationItem *)self locationView];
    [v18 setAttributedText:v11];
  }

  else
  {
    v10 = [(EKEventDetailLocationItem *)self locationView];
    [v10 setAttributedText:v9];
  }
}

- (void)updateLocation:(id)a3 forEvent:(id)a4
{
  v24 = a3;
  v6 = a4;
  locationURL = self->_locationURL;
  self->_locationURL = 0;

  v8 = [v6 preferredLocation];
  v9 = [v8 isPrediction];

  if (v9)
  {
    v10 = [(EKEventDetailLocationItem *)self locationView];
    v11 = v10;
    v12 = 3;
  }

  else
  {
    if (self->_locationIsAttendee)
    {
      goto LABEL_8;
    }

    v13 = MEMORY[0x1E6966A50];
    v14 = [v6 structuredLocation];
    v15 = [v13 mapsURLForFallbackLocationTitle:v24 structuredLocation:v14 hasMapItemLaunchOptionFromTimeToLeaveNotification:{-[EKEventDetailLocationItem hasMapItemLaunchOptionFromTimeToLeaveNotification](self, "hasMapItemLaunchOptionFromTimeToLeaveNotification")}];
    v16 = self->_locationURL;
    self->_locationURL = v15;

    v17 = self->_locationURL;
    v10 = [(EKEventDetailLocationItem *)self locationView];
    v11 = v10;
    if (v17)
    {
      v12 = 0;
    }

    else
    {
      v12 = 7;
    }
  }

  [v10 setDataDetectorTypes:v12];

LABEL_8:
  locationTapRecognizer = self->_locationTapRecognizer;
  if (self->_locationURL)
  {
    if (!locationTapRecognizer)
    {
      v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__locationTapped];
      v20 = self->_locationTapRecognizer;
      self->_locationTapRecognizer = v19;
    }

    v21 = [(EKEventDetailLocationItem *)self locationView];
    [v21 addGestureRecognizer:self->_locationTapRecognizer];
  }

  else
  {
    if (!locationTapRecognizer)
    {
      goto LABEL_15;
    }

    v21 = [(EKEventDetailLocationItem *)self locationView];
    [v21 removeGestureRecognizer:self->_locationTapRecognizer];
  }

LABEL_15:
  v22 = [(EKEventDetailLocationItem *)self locationTitle];
  v23 = [v24 isEqualToString:v22];

  if ((v23 & 1) == 0)
  {
    [(EKEventDetailLocationItem *)self setLocationTitle:v24];
    [(EKEventDetailLocationItem *)self updateAttributedString];
  }
}

- (id)locationView
{
  locationView = self->_locationView;
  if (!locationView)
  {
    v4 = [EKTextViewWithLabelTextMetrics alloc];
    v5 = [(EKTextViewWithLabelTextMetrics *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_locationView;
    self->_locationView = v5;

    [(EKTextViewWithLabelTextMetrics *)self->_locationView setLineBreakMode:2];
    v7 = self->_locationView;
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(EKTextViewWithLabelTextMetrics *)v7 setBackgroundColor:v8];

    [(EKTextViewWithLabelTextMetrics *)self->_locationView setOpaque:0];
    [(EKTextViewWithLabelTextMetrics *)self->_locationView setDelegate:self];
    locationView = self->_locationView;
  }

  return locationView;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  if (self->_locationView == v4)
  {
    v9 = v4;
    v5 = [(EKTextViewWithLabelTextMetrics *)v4 selectedTextRange];
    v4 = v9;
    if (v5)
    {
      v6 = [(EKTextViewWithLabelTextMetrics *)v9 selectedTextRange];
      v7 = [v6 isEmpty];

      v4 = v9;
      if ((v7 & 1) == 0)
      {
        v8 = [(EKTextViewWithLabelTextMetrics *)v9 text];
        -[EKTextViewWithLabelTextMetrics setSelectedRange:](v9, "setSelectedRange:", 0, [v8 length]);

        v4 = v9;
      }
    }
  }
}

- (void)_locationTapped
{
  v3 = [(EKTextViewWithLabelTextMetrics *)self->_locationView selectedTextRange];
  if (v3 && (v4 = v3, -[EKTextViewWithLabelTextMetrics selectedTextRange](self->_locationView, "selectedTextRange"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEmpty], v5, v4, !v6))
  {
    locationView = self->_locationView;

    [(EKTextViewWithLabelTextMetrics *)locationView setSelectedTextRange:0];
  }

  else if ([MEMORY[0x1E696F4A8] canHandleURL:self->_locationURL])
  {
    v7 = MEMORY[0x1E696F270];
    locationURL = self->_locationURL;

    [v7 _openDefaultNavigationWithURL:locationURL fromScene:0 completionHandler:&__block_literal_global_49];
  }

  else
  {
    v10 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v10 openURL:self->_locationURL configuration:0 completionHandler:&__block_literal_global_38];
  }
}

void __44__EKEventDetailLocationItem__locationTapped__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_ERROR, "Failed to open URL when location tapped", v3, 2u);
    }
  }
}

void __44__EKEventDetailLocationItem__locationTapped__block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when location tapped: %@", &v7, 0xCu);
    }
  }
}

@end