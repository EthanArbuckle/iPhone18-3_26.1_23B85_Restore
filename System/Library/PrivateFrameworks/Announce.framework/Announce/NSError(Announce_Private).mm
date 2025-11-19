@interface NSError(Announce_Private)
+ (__CFString)_descriptionForErrorCode:()Announce_Private;
+ (id)an_errorWithCode:()Announce_Private component:;
+ (id)an_errorWithCode:()Announce_Private component:description:;
@end

@implementation NSError(Announce_Private)

+ (id)an_errorWithCode:()Announce_Private component:
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 _descriptionForErrorCode:a3];
  v8 = [v5 an_errorWithCode:a3 component:v6 description:v7];

  return v8;
}

+ (id)an_errorWithCode:()Announce_Private component:description:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = v7;
  if (a4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", a4, v7];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA068];
  v17[0] = *MEMORY[0x277CCA450];
  v17[1] = v12;
  v18[0] = v8;
  v18[1] = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v11 errorWithDomain:@"com.apple.announce" code:a3 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (__CFString)_descriptionForErrorCode:()Announce_Private
{
  result = @"Home Object Not Found";
  switch(a3)
  {
    case 1001:
      return result;
    case 1002:
      result = @"Home Not Found";
      break;
    case 1003:
      result = @"Zone Not Found";
      break;
    case 1004:
      result = @"Room Not Found";
      break;
    case 1005:
    case 1010:
    case 1011:
    case 1014:
    case 1036:
    case 1039:
    case 1040:
    case 1048:
LABEL_5:
      result = @"Unknown Error";
      break;
    case 1006:
      result = @"Current home is not available.";
      break;
    case 1007:
      result = @"No Homes Found";
      break;
    case 1008:
      result = @"Announcement Not Found";
      break;
    case 1009:
      result = @"Did not find any viable listeners in home.";
      break;
    case 1012:
      result = @"Rapport and IDS Send Message Errors";
      break;
    case 1013:
      result = @"Multiple Send Errors";
      break;
    case 1015:
      result = @"No available HomePods to relay announcement.";
      break;
    case 1016:
      result = @"Invalid Home";
      break;
    case 1017:
      result = @"Announce Access Not Enabled";
      break;
    case 1018:
      result = @"Failed to start Playback";
      break;
    case 1019:
      result = @"Playback Finished Unsuccessfully";
      break;
    case 1020:
      result = @"Not currently playing announcements";
      break;
    case 1021:
      result = @"Cannot skip beyond last announcement";
      break;
    case 1022:
      result = @"No announcements found to play back";
      break;
    case 1023:
      result = @"Missing File Path";
      break;
    case 1024:
      result = @"Audio Session Media Services were Lost";
      break;
    case 1025:
      result = @"Audio Session Media Services were Reset";
      break;
    case 1026:
      result = @"Failed to serialize message to Data.";
      break;
    case 1027:
      result = @"Playback Finished Due to Audio Session Interruption";
      break;
    case 1028:
      result = @"Did not find any homes that support announce.";
      break;
    case 1029:
      result = @"Current home does not support announce.";
      break;
    case 1030:
      result = @"Validation Failure";
      break;
    case 1031:
      result = @"No Recipients with Announce Enabled Found";
      break;
    case 1032:
      result = @"No nearby HomePods available for Relay.";
      break;
    case 1033:
      result = @"Home does not contain any HomePods";
      break;
    case 1034:
      result = @"Target location does not contain any HomePods";
      break;
    case 1035:
      result = @"Home does not contain any HomePods that support Announce";
      break;
    case 1037:
      result = @"Playback stopped. Not an actual failure.";
      break;
    case 1038:
      result = @"Failed to resume playback.";
      break;
    case 1041:
      result = @"Failed to Create Output File";
      break;
    case 1042:
      result = @"Unsupported Data Type";
      break;
    case 1043:
      result = @"Did not find any other viable HomePod listeners in home.";
      break;
    case 1044:
      result = @"Empty Audio File";
      break;
    case 1045:
      result = @"Unsupported Announcement Destination Type";
      break;
    case 1046:
      result = @"Unsupported Announcement Action Type";
      break;
    case 1047:
      result = @"Recognized User and no other recipients with Announce enabled";
      break;
    case 1049:
      result = @"Destination does not contain announce-capable devices";
      break;
    case 1050:
      result = @"Unsupported Playback Command";
      break;
    case 1051:
      result = @"Failed to find Endpoint Accessory in Home";
      break;
    case 1052:
      result = @"File not found";
      break;
    case 1053:
      result = @"Failed to load player item";
      break;
    case 1054:
      result = @"Failed to Preroll AVPlayer";
      break;
    case 1055:
      result = @"Player Status Failed";
      break;
    case 1056:
      result = @"Home App is not installed";
      break;
    case 1057:
      result = @"Announcing to same room";
      break;
    default:
      switch(a3)
      {
        case 5000:
          result = @"Failed to send an announcement through one or more connections";
          break;
        case 5001:
          result = @"Failed to start remote playback session";
          break;
        case 5002:
          result = @"Failed to create a track player";
          break;
        case 5003:
          result = @"Announcement requested to play in the past";
          break;
        case 5004:
          result = @"Audio Player finished playing with an error";
          break;
        case 5005:
          result = @"No home identifier in announcement";
          break;
        case 5006:
          result = @"Failed to find home for an identifier";
          break;
        case 5007:
          result = @"No group identifier in announcement";
          break;
        case 5008:
          result = @"Failed to clean the received cache directory";
          break;
        case 5009:
          result = @"Failed to write announcement data to file";
          break;
        case 5010:
          result = @"Failed to remove file from disk";
          break;
        case 5011:
          result = @"Failed to get cache directory for announcements sent and received";
          break;
        case 5012:
          result = @"Failed to add notification request to Notification Center";
          break;
        case 5013:
          result = @"Failed to replace Notification content in Notification Center";
          break;
        case 5014:
          result = @"State Publisher failed to set state";
          break;
        case 5015:
          result = @"State Publisher failed to get registration token";
          break;
        case 5016:
          result = @"Failed to load announcement data from file url";
          break;
        case 5017:
          result = @"Failed to initialize announcement from a message dictionary";
          break;
        case 5018:
          result = @"Received announcement from an unsupported connection";
          break;
        case 5019:
          result = @"Failed to process audio data";
          break;
        case 5020:
          result = @"Failed property list serialization on IDS data";
          break;
        case 5021:
          result = @"Failed to extract data from an IDS url";
          break;
        case 5022:
          result = @"Failed to send an IDS message";
          break;
        case 5023:
          result = @"Broadcast announcement played event failed";
          break;
        case 5024:
          result = @"Coordination service error activating link";
          break;
        case 5025:
          result = @"Unsupported sender type";
          break;
        case 5026:
          result = @"Failed to write data to url";
          break;
        case 5027:
          result = @"Failed to rename directory before safely purging";
          break;
        case 5028:
          result = @"Failed to remove temporary sub directory";
          break;
        case 5029:
          result = @"Failed to remote item";
          break;
        case 5030:
          result = @"Failed to create directory";
          break;
        case 5031:
          result = @"Failed to remove directory";
          break;
        case 5032:
          result = @"Played empty audio file";
          break;
        case 5033:
          result = @"Announcement in home collection timeout";
          break;
        case 5034:
          result = @"No file path found for announcement";
          break;
        default:
          goto LABEL_5;
      }

      break;
  }

  return result;
}

@end