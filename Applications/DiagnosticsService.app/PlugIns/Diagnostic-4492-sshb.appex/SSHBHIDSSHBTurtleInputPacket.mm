@interface SSHBHIDSSHBTurtleInputPacket
- (id)description;
- (id)descriptionDictionary;
@end

@implementation SSHBHIDSSHBTurtleInputPacket

- (id)description
{
  v3 = +[NSMutableString string];
  descriptionDictionary = [(SSHBHIDSSHBTurtleInputPacket *)self descriptionDictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [descriptionDictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(descriptionDictionary);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [descriptionDictionary objectForKeyedSubscript:v9];
        [v3 appendFormat:@"%@=%@\n", v9, v10];
      }

      v6 = [descriptionDictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];

  return v3;
}

- (id)descriptionDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedChar:[(SSHBHIDSSHBTurtleInputPacket *)self reportID]];
  [v3 setObject:v4 forKeyedSubscript:@"reportID"];

  v5 = [NSNumber numberWithUnsignedChar:[(SSHBHIDSSHBTurtleInputPacket *)self frameNumber]];
  [v3 setObject:v5 forKeyedSubscript:@"frameNumber"];

  v6 = [NSNumber numberWithUnsignedLongLong:[(SSHBHIDSSHBTurtleInputPacket *)self timestamp]];
  [v3 setObject:v6 forKeyedSubscript:@"timestamp"];

  v7 = [NSNumber numberWithUnsignedChar:[(SSHBHIDSSHBTurtleInputPacket *)self cookie_type]];
  [v3 setObject:v7 forKeyedSubscript:@"cookie_type"];

  v8 = [NSNumber numberWithUnsignedShort:[(SSHBHIDSSHBTurtleInputPacket *)self cookie]];
  [v3 setObject:v8 forKeyedSubscript:@"cookie"];

  v9 = objc_opt_self();
  v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v9 capValue]);
  [v3 setObject:v10 forKeyedSubscript:@"capValue"];

  v11 = [NSNumber numberWithInt:[(SSHBHIDSSHBTurtleInputPacket *)self gapValue]];
  [v3 setObject:v11 forKeyedSubscript:@"gapValue"];

  v12 = [NSNumber numberWithShort:[(SSHBHIDSSHBTurtleInputPacket *)self forceValue]];
  [v3 setObject:v12 forKeyedSubscript:@"forceValue"];

  v13 = [NSNumber numberWithShort:[(SSHBHIDSSHBTurtleInputPacket *)self mesaTemperature]];
  [v3 setObject:v13 forKeyedSubscript:@"mesaTemperature"];

  v14 = [NSNumber numberWithUnsignedChar:[(SSHBHIDSSHBTurtleInputPacket *)self mesaFd]];
  [v3 setObject:v14 forKeyedSubscript:@"mesaFd"];

  v15 = [NSNumber numberWithUnsignedChar:[(SSHBHIDSSHBTurtleInputPacket *)self mesaFdStuck]];
  [v3 setObject:v15 forKeyedSubscript:@"mesaFdStuck"];

  [(SSHBHIDSSHBTurtleInputPacket *)self mesaTemperatureProcessed];
  v16 = [NSNumber numberWithFloat:?];
  [v3 setObject:v16 forKeyedSubscript:@"mesaTemperatureProcessed"];

  return v3;
}

@end