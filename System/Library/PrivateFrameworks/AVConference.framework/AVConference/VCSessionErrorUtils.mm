@interface VCSessionErrorUtils
+ (id)VCSessionCaptionsErrorEvent:(unsigned int)a3 errorPath:(id)a4 returnCode:(int64_t)a5;
+ (id)VCSessionErrorEvent:(unsigned int)a3 errorPath:(id)a4 returnCode:(int64_t)a5;
+ (id)VCSessionParticipantErrorEvent:(unsigned int)a3 errorPath:(id)a4;
@end

@implementation VCSessionErrorUtils

+ (id)VCSessionErrorEvent:(unsigned int)a3 errorPath:(id)a4 returnCode:(int64_t)a5
{
  switch(a3)
  {
    case 1u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Add participant failed";
      v10 = @"Remote participant already exist in session";
      v12 = 32016;
      v13 = 1;
      goto LABEL_22;
    case 2u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Add participant failed";
      v10 = @"Remote participant data is nil";
      v12 = 32016;
      v13 = 2;
      goto LABEL_22;
    case 3u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Trying to remove an unknown participant";
      v10 = @"Invalid participant";
      v12 = 32016;
      v13 = 3;
      goto LABEL_22;
    case 4u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Bad API usage";
      v10 = @"Start called on a stopping session";
      v12 = 32028;
      v13 = 4;
      goto LABEL_22;
    case 5u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Bad API usage";
      v10 = @"Stop called on a starting session";
      v12 = 32028;
      v13 = 5;
      goto LABEL_22;
    case 6u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Bad API usage";
      v10 = @"Start called while session is already in progress";
      v12 = 32028;
      v13 = 6;
      goto LABEL_22;
    case 7u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Bad API usage";
      v10 = @"Stop called on an already stopped session";
      v12 = 32028;
      v13 = 7;
      goto LABEL_22;
    case 8u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Session start failed";
      v10 = @"One or more participants failed to start";
      v12 = 32000;
      v13 = 8;
      goto LABEL_22;
    case 9u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Add participant failed";
      v10 = @"Remote source collision detected";
      v12 = 32024;
      v13 = 9;
      goto LABEL_22;
    case 0xAu:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Add participant failed";
      v10 = @"Local source collision detected";
      v12 = 32024;
      v13 = 10;
      goto LABEL_22;
    case 0xBu:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Update configuration failed";
      v10 = @"Failed to update session configuration";
      v12 = 32016;
      v13 = 11;
      goto LABEL_22;
    case 0xCu:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Media decryption failed";
      v10 = @"Remote media decryption failed";
      v12 = 32018;
      v13 = 12;
      goto LABEL_22;
    case 0xDu:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Fractured media detected";
      v10 = @"Remote participant subscribed to unknown stream ID";
      v12 = 32027;
      v13 = 13;
      goto LABEL_22;
    case 0xEu:
    case 0x18u:
    case 0x19u:
      v7 = MEMORY[0x1E696ABC0];
      v8 = a3;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No remote packets for %ld seconds", a5];
      v10 = @"Remote network outage?";
      v11 = v7;
      v12 = 32001;
      v13 = v8;
      goto LABEL_22;
    case 0xFu:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Init remote participant failed";
      v16 = @"Unable to init remote participant";
      v17 = 32016;
      v18 = 15;
      goto LABEL_29;
    case 0x10u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Add OneToOne Participant failed";
      v16 = @"Unable to add OneToOne participant";
      v17 = 32016;
      v18 = 16;
      goto LABEL_29;
    case 0x11u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Configure remote participant failed";
      v16 = @"Unable to configure remote participant";
      v17 = 32016;
      v18 = 17;
      goto LABEL_29;
    case 0x12u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Configure OneToOne Local participant failed";
      v16 = @"Unable to configure OneToOne Local participant";
      v17 = 32016;
      v18 = 18;
      goto LABEL_29;
    case 0x13u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Session failed to switch from OneToOne to Multiway";
      v16 = @"Unable to send control message";
      v17 = 32000;
      v18 = 19;
      goto LABEL_29;
    case 0x14u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Session failed to switch from Multiway to OneToOne";
      v16 = @"Unable to send control message";
      v17 = 32000;
      v18 = 20;
      goto LABEL_29;
    case 0x15u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Uplink key material failed to roll";
      v16 = @"No uplink key material update event";
      v17 = 32018;
      v18 = 21;
      goto LABEL_29;
    case 0x16u:
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Call terminated gracefully";
      v16 = @"Remote participant hung up";
      v17 = 32003;
      v18 = 22;
LABEL_29:

      return [v14 AVConferenceServiceError:v17 detailedCode:v18 filePath:a4 description:v15 reason:v16];
    case 0x17u:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Call failed";
      v10 = @"Media server terminated";
      v12 = 32000;
      v13 = 23;
      goto LABEL_22;
    case 0x1Au:
      v11 = MEMORY[0x1E696ABC0];
      v9 = @"Short MKI detected when 'shortMKI' feature disabled";
      v10 = @"MKI collision detected";
      v12 = 32041;
      v13 = 26;
LABEL_22:

      result = [v11 AVConferenceServiceError:v12 detailedCode:v13 returnCode:a5 filePath:a4 description:v9 reason:v10];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

+ (id)VCSessionParticipantErrorEvent:(unsigned int)a3 errorPath:(id)a4
{
  switch(a3)
  {
    case 1u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Failed to set audio position";
      v7 = @"Audio position value is out of range";
      v8 = 32016;
      v9 = 1;
      goto LABEL_3;
    case 2u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant start error";
      v7 = @"Start called on stopping participant";
      v8 = 32028;
      v9 = 2;
      goto LABEL_3;
    case 3u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant stop error";
      v7 = @"Stop called on a starting participant";
      v8 = 32028;
      v9 = 3;
      goto LABEL_3;
    case 4u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant start error";
      v7 = @"Start called on an already started participant";
      v8 = 32028;
      v9 = 4;
      goto LABEL_3;
    case 5u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant stop error";
      v7 = @"Stop called on an already stopped participant";
      v8 = 32028;
      v9 = 5;
      goto LABEL_3;
    case 6u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant enabling/disabling audio/video in progress";
      v7 = @"Enable/disable audio or video called when it is already in progress";
      v8 = 32028;
      v9 = 6;
      goto LABEL_3;
    case 7u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant start in progress";
      v7 = @"Enable/disable audio or video called on a starting participant";
      v8 = 32028;
      v9 = 7;
      goto LABEL_3;
    case 8u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant stop in progress";
      v7 = @"Enable/disable audio or video called on a stopping participant";
      v8 = 32028;
      v9 = 8;
      goto LABEL_3;
    case 9u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant in invalid";
      v7 = @"API called when not in the right state";
      v8 = 32026;
      v9 = 9;
      goto LABEL_3;
    case 0xAu:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant start error";
      v7 = @"Memory allocation failed";
      v8 = 32000;
      v9 = 10;
      goto LABEL_3;
    case 0xBu:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Failed to set the volume";
      v7 = @"Invalid input";
      v8 = 32016;
      v9 = 11;
      goto LABEL_3;
    case 0xCu:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant media state change error";
      v7 = @"Setting the state of this media type is unsupported";
      v8 = 32028;
      v9 = 12;
      goto LABEL_3;
    case 0xDu:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant media state inconsistency";
      v7 = @"Cannot set different states on stream groups that belong to the same media type";
      v8 = 32028;
      v9 = 13;
      goto LABEL_3;
    case 0xEu:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant captions audio IO failure";
      v7 = @"Failed to configure audio IO. Will not start captions.";
      v8 = 32000;
      v9 = 14;
      goto LABEL_3;
    case 0xFu:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Participant argument error";
      v7 = @"The argument is invalid.";
      v8 = 32016;
      v9 = 15;
      goto LABEL_3;
    case 0x10u:
      v5 = MEMORY[0x1E696ABC0];
      v6 = @"Media representation error";
      v7 = @"The provided representation is unsupported.";
      v8 = 16;
      v9 = 16;
LABEL_3:
      result = [v5 AVConferenceServiceError:v8 detailedCode:v9 filePath:a4 description:v6 reason:v7];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

+ (id)VCSessionCaptionsErrorEvent:(unsigned int)a3 errorPath:(id)a4 returnCode:(int64_t)a5
{
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      v6 = MEMORY[0x1E696ABC0];
      if (a3 == 6)
      {
        v7 = @"Speech Analyzer Error";
        v8 = @"Analyzer is unavailable";
        v9 = 6;
      }

      else
      {
        v7 = @"Captions Initalization Error";
        v8 = @"Recognizer Request/Task or Converter Failed";
        v9 = 7;
      }

      return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
    }

    switch(a3)
    {
      case 8u:
        v6 = MEMORY[0x1E696ABC0];
        v7 = @"Speech Translator Client Error";
        v8 = @"Speech Translation Client Initialization Failed.";
        v9 = 8;
        return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
      case 9u:
        v6 = MEMORY[0x1E696ABC0];
        v7 = @"Speech Translator Client Error";
        v8 = @"Speech Translation Client Start Failed.";
        v9 = 9;
        return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
      case 0xAu:
        v6 = MEMORY[0x1E696ABC0];
        v7 = @"Captions Initialization Error";
        v8 = @"Configuration Failed";
        v9 = 10;
        return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v6 = MEMORY[0x1E696ABC0];
        v7 = @"Invalid captions state transition";
        v8 = @"Unsupported transition";
        v9 = 3;
        return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
      }

      if (a3 != 4)
      {
        v6 = MEMORY[0x1E696ABC0];
        v7 = @"Speech Recognizer Error";
        v8 = @"Recognizer is unavailable";
        v9 = 5;
        return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
      }

LABEL_17:
      v6 = MEMORY[0x1E696ABC0];
      v9 = a3;
      v7 = @"Speech Recognizer Error";
      v8 = @"The Speech Framework is unavailable";
      return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
    }

    if (a3 == 1)
    {
      goto LABEL_17;
    }

    if (a3 == 2)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = @"Captions State Transition Failed";
      v8 = @"Captions not supported";
      v9 = 2;
      return [v6 AVConferenceServiceError:32016 detailedCode:v9 returnCode:a5 filePath:a4 description:v7 reason:v8];
    }
  }

  return 0;
}

@end