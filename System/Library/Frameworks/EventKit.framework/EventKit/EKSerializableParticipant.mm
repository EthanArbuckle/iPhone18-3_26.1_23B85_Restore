@interface EKSerializableParticipant
+ (id)classesForKey;
- (EKSerializableParticipant)initWithParticipant:(id)a3;
- (id)createAttendee:(id *)a3;
@end

@implementation EKSerializableParticipant

+ (id)classesForKey
{
  v20[7] = *MEMORY[0x1E69E9840];
  v19[0] = @"name";
  v18 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v20[0] = v2;
  v19[1] = @"emailAddress";
  v17 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v20[1] = v3;
  v19[2] = @"phoneNumber";
  v16 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v20[2] = v4;
  v19[3] = @"url";
  v15 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v20[3] = v5;
  v19[4] = @"participantRole";
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v20[4] = v6;
  v19[5] = @"participantStatus";
  v13 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v20[5] = v7;
  v19[6] = @"participantType";
  v12 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v20[6] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (EKSerializableParticipant)initWithParticipant:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EKSerializableParticipant;
  v5 = [(EKSerializableParticipant *)&v11 init];
  if (v5)
  {
    v6 = [v4 name];
    [(EKSerializableParticipant *)v5 setName:v6];

    v7 = [v4 emailAddress];
    [(EKSerializableParticipant *)v5 setEmailAddress:v7];

    v8 = [v4 phoneNumber];
    [(EKSerializableParticipant *)v5 setPhoneNumber:v8];

    v9 = [v4 URL];
    [(EKSerializableParticipant *)v5 setUrl:v9];

    -[EKSerializableParticipant setParticipantRole:](v5, "setParticipantRole:", [v4 participantRole]);
    -[EKSerializableParticipant setParticipantStatus:](v5, "setParticipantStatus:", [v4 participantStatus]);
    -[EKSerializableParticipant setParticipantType:](v5, "setParticipantType:", [v4 participantType]);
  }

  return v5;
}

- (id)createAttendee:(id *)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [(EKSerializableParticipant *)self phoneNumber];
  if (v5 || ([(EKSerializableParticipant *)self emailAddress], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v6 = [(EKSerializableParticipant *)self name];
    v7 = [(EKSerializableParticipant *)self emailAddress];
    v8 = [(EKSerializableParticipant *)self phoneNumber];
    v9 = [(EKSerializableParticipant *)self url];
    a3 = [EKAttendee attendeeWithName:v6 emailAddress:v7 phoneNumber:v8 url:v9];

    [a3 setParticipantRole:{-[EKSerializableParticipant participantRole](self, "participantRole")}];
    [a3 setParticipantType:{-[EKSerializableParticipant participantType](self, "participantType")}];
    [a3 setParticipantStatus:{-[EKSerializableParticipant participantStatus](self, "participantStatus")}];
    goto LABEL_5;
  }

  v12 = [(EKSerializableParticipant *)self url];

  if (v12)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    v14 = *MEMORY[0x1E696A580];
    v15[0] = @"Either url, phoneNumber or emailAddress should not be nil.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:v13];

    a3 = 0;
  }

LABEL_5:
  v10 = *MEMORY[0x1E69E9840];

  return a3;
}

@end