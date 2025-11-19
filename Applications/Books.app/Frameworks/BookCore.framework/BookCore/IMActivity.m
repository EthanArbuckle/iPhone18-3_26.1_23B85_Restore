@interface IMActivity
+ (id)activityTypes;
@end

@implementation IMActivity

+ (id)activityTypes
{
  v4[0] = UIActivityTypePostToFacebook;
  v4[1] = UIActivityTypePostToTwitter;
  v4[2] = UIActivityTypePostToWeibo;
  v4[3] = UIActivityTypeMessage;
  v4[4] = UIActivityTypeMail;
  v4[5] = UIActivityTypePrint;
  v4[6] = UIActivityTypeCopyToPasteboard;
  v4[7] = UIActivityTypeAssignToContact;
  v4[8] = UIActivityTypeSaveToCameraRoll;
  v4[9] = UIActivityTypeAddToReadingList;
  v4[10] = UIActivityTypePostToFlickr;
  v4[11] = UIActivityTypePostToVimeo;
  v4[12] = UIActivityTypePostToTencentWeibo;
  v4[13] = UIActivityTypeAirDrop;
  v4[14] = UIActivityTypeOpenInIBooks;
  v4[15] = UIActivityTypeMarkupAsPDF;
  v4[16] = UIActivityTypeUserDefaults;
  v4[17] = UIActivityTypeCreateReminder;
  v4[18] = UIActivityTypeSaveToNotes;
  v4[19] = UIActivityTypeCloudSharing;
  v4[20] = UIActivityTypeSaveToFiles;
  v4[21] = @"com.apple.share.Messages.window";
  v4[22] = @"com.apple.Notes.SharingExtension";
  v4[23] = @"com.linkedin.LinkedIn.ShareExtension";
  v4[24] = @"com.apple.schoolwork.ClassKitApp.SaveToClassKitApp";
  v2 = [NSArray arrayWithObjects:v4 count:25];

  return v2;
}

@end