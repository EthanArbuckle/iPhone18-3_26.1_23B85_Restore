@interface AXMIDIEvent
- (AXMIDIEvent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)noteDescription;
- (int64_t)ordinalChannel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMIDIEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXMIDIEvent);
  [(AXMIDIEvent *)v4 setChannel:[(AXMIDIEvent *)self channel]];
  [(AXMIDIEvent *)v4 setType:[(AXMIDIEvent *)self type]];
  [(AXMIDIEvent *)v4 setNote:[(AXMIDIEvent *)self note]];
  [(AXMIDIEvent *)v4 setPressure:[(AXMIDIEvent *)self pressure]];
  [(AXMIDIEvent *)v4 setControl:[(AXMIDIEvent *)self control]];
  [(AXMIDIEvent *)v4 setControlValue:[(AXMIDIEvent *)self controlValue]];
  [(AXMIDIEvent *)v4 setProgram:[(AXMIDIEvent *)self program]];
  [(AXMIDIEvent *)v4 setPitchBend:[(AXMIDIEvent *)self pitchBend]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AXMIDIEvent channel](self forKey:{"channel"), @"midi_channel"}];
  [coderCopy encodeInteger:-[AXMIDIEvent type](self forKey:{"type"), @"midi_type"}];
  [coderCopy encodeInteger:-[AXMIDIEvent note](self forKey:{"note"), @"midi_note"}];
  [coderCopy encodeInteger:-[AXMIDIEvent pressure](self forKey:{"pressure"), @"midi_pressure"}];
  [coderCopy encodeInteger:-[AXMIDIEvent control](self forKey:{"control"), @"midi_control"}];
  [coderCopy encodeInteger:-[AXMIDIEvent controlValue](self forKey:{"controlValue"), @"midi_controlvalue"}];
  [coderCopy encodeInteger:-[AXMIDIEvent program](self forKey:{"program"), @"midi_program"}];
  [coderCopy encodeInteger:-[AXMIDIEvent pitchBend](self forKey:{"pitchBend"), @"midi_pitchbend"}];
}

- (AXMIDIEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AXMIDIEvent;
  v5 = [(AXMIDIEvent *)&v7 init];
  if (v5)
  {
    v5->_channel = [coderCopy decodeIntegerForKey:@"midi_channel"];
    v5->_type = [coderCopy decodeIntegerForKey:@"midi_type"];
    v5->_note = [coderCopy decodeIntegerForKey:@"midi_note"];
    v5->_pressure = [coderCopy decodeIntegerForKey:@"midi_pressure"];
    v5->_control = [coderCopy decodeIntegerForKey:@"midi_control"];
    v5->_controlValue = [coderCopy decodeIntegerForKey:@"midi_controlvalue"];
    v5->_program = [coderCopy decodeIntegerForKey:@"midi_program"];
    v5->_pitchBend = [coderCopy decodeIntegerForKey:@"midi_pitchbend"];
  }

  return v5;
}

- (id)description
{
  type = [(AXMIDIEvent *)self type];
  v4 = 0;
  if (type <= 3)
  {
    if (type > 1)
    {
      v9 = MEMORY[0x1E696AEC0];
      if (type == 2)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent note](self, "note")}];
        noteDescription = [(AXMIDIEvent *)self noteDescription];
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
        [v9 stringWithFormat:@"Note On. note:%@ (%@) pressure:%@", v6, noteDescription, v8];
      }

      else
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent note](self, "note")}];
        noteDescription = [(AXMIDIEvent *)self noteDescription];
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
        [v9 stringWithFormat:@"AfterTouch. note:%@ (%@) pressure:%@", v6, noteDescription, v8];
      }
    }

    else
    {
      if (!type)
      {
        v4 = @"Unknown";
        goto LABEL_24;
      }

      if (type != 1)
      {
        goto LABEL_24;
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent note](self, "note")}];
      noteDescription = [(AXMIDIEvent *)self noteDescription];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
      [v5 stringWithFormat:@"Note Off. note:%@ (%@) pressure:%@", v6, noteDescription, v8];
    }
    v4 = ;

    goto LABEL_20;
  }

  if (type <= 5)
  {
    if (type != 4)
    {
      v10 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent program](self, "program")}];
      [v10 stringWithFormat:@"Program Change. program:%@", v6];
      v4 = LABEL_22:;
      goto LABEL_23;
    }

    v12 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent control](self, "control")}];
    noteDescription = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent controlValue](self, "controlValue")}];
    v4 = [v12 stringWithFormat:@"Control Change. control:%@ value:%@", v6, noteDescription];
LABEL_20:

LABEL_23:
    goto LABEL_24;
  }

  switch(type)
  {
    case 6:
      v11 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
      [v11 stringWithFormat:@"Channel AfterTouch. pressure:%@", v6];
      goto LABEL_22;
    case 7:
      v13 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXMIDIEvent pitchBend](self, "pitchBend")}];
      [v13 stringWithFormat:@"Pitch Bend. value:%@", v6];
      goto LABEL_22;
    case 8:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"System Exclusive"];
      break;
  }

LABEL_24:
  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMIDIEvent ordinalChannel](self, "ordinalChannel")}];
  v16 = [v14 stringWithFormat:@"MIDIEvent<%p>: channel:%@ type:%@", self, v15, v4];

  return v16;
}

- (int64_t)ordinalChannel
{
  result = self->_channel;
  if (result > 127)
  {
    if (result <= 2047)
    {
      if (result > 511)
      {
        if (result == 512)
        {
          return 10;
        }

        if (result == 1024)
        {
          return 11;
        }
      }

      else
      {
        if (result == 128)
        {
          return 8;
        }

        if (result == 256)
        {
          return 9;
        }
      }
    }

    else if (result < 0x2000)
    {
      if (result == 2048)
      {
        return 12;
      }

      if (result == 4096)
      {
        return 13;
      }
    }

    else
    {
      switch(result)
      {
        case 0x2000:
          return 14;
        case 0x4000:
          return 15;
        case 0x8000:
          return 16;
      }
    }

    return -1;
  }

  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return -1;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      return 2;
    }

    if (result == 4)
    {
      return 3;
    }

    return -1;
  }

  if (result)
  {
    return 1;
  }

  return result;
}

- (id)noteDescription
{
  noteValue = [(AXMIDIEvent *)self noteValue];
  if (noteValue > 0xB)
  {
    v4 = &stru_1EFE6D570;
  }

  else
  {
    v4 = off_1E71EB360[noteValue];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent noteOctave](self, "noteOctave")}];
  v7 = [v5 stringWithFormat:@"%@-%@", v4, v6];

  return v7;
}

@end